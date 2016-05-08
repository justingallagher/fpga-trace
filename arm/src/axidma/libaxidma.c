/**
 * @file libaxidma.c
 * @date Saturday, December 05, 2015 at 10:10:39 AM EST
 * @author Brandon Perez (bmperez)
 * @author Jared Choi (jaewonch)
 *
 * This is a simple library that wraps around the AXI DMA module,
 * allowing for the user to abstract away from the finer grained details.
 *
 * @bug No known bugs.
 **/

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <assert.h>
#include <fcntl.h>              // Flags for open()
#include <sys/stat.h>           // Open() system call
#include <sys/types.h>          // Types for open()
#include <sys/mman.h>           // Mmap system call
#include <sys/ioctl.h>          // IOCTL system call
#include <unistd.h>             // Close() system call
#include <errno.h>              // Error codes
#include <signal.h>             // Signal handling functions

#include "libaxidma.h"          // Local definitions
#include "axidma_ioctl.h"       // The IOCTL interface to AXI DMA

/*----------------------------------------------------------------------------
 * Internal definitions
 *----------------------------------------------------------------------------*/

// A structure that holds metadata about each channel
struct dma_channel {
    enum axidma_dir dir;            // The direction of the channel
    enum axidma_type type;          // The type of the channel
    axidma_cb_t callback;           // The callback for channel completion
    void *user_data;                // The user data to pass to the callback
};

// The structure that represents the AXI DMA device
struct axidma_dev {
    int fd;                         // The file descriptor for the device
    int num_tx_chans;               // The total number of transmit channels
    int *tx_chan_ids;               // The channel id's for the transmit chans
    int num_rx_chans;               // The total number of receive channels
    int *rx_chan_ids;               // The channel id's for the receive channels
    int num_chans;                  // The total number of DMA channels
    struct dma_channel *channels;   // All of the DMA channels in the system
};

// The DMA device structure, and a boolean checking if it's already open
bool initialized;
struct axidma_dev axidma_dev;

// Forward declarations for private helper functions
static int probe_channels(axidma_dev_t dev);
static int categorize_channels(axidma_dev_t dev,
        struct axidma_chan *channels, struct axidma_num_channels *num_chans);
static unsigned long dir_to_ioctl(enum axidma_dir dir);
static int setup_dma_callback(axidma_dev_t dev);
static void axidma_callback(int signal, siginfo_t *siginfo, void *context);
static bool channel_exists(axidma_dev_t dev, int channel);
static bool valid_channel(axidma_dev_t dev, int channel,
                          enum axidma_dir dir);

/*----------------------------------------------------------------------------
 * Public Interface
 *----------------------------------------------------------------------------*/

/* Initializes the AXI DMA device, returning a new handle to the
 * axidma_device. */
struct axidma_dev *axidma_init()
{
    assert(!initialized);

    // Open the AXI DMA device
    axidma_dev.fd = open(AXIDMA_DEV_PATH, O_RDWR|O_EXCL);
    if (axidma_dev.fd < 0) {
        perror("Error opening AXI DMA device");
        fprintf(stderr, "Expected the AXI DMA device at the path `%s`\n",
                AXIDMA_DEV_PATH);
        return NULL;
    }

    // Query the AXIDMA device for all of its channels
    if (probe_channels(&axidma_dev) < 0) {
        close(axidma_dev.fd);
        return NULL;
    }

    // TODO: Should really check that signal is not already taken
    /* Setup a real-time signal to indicate when transactions have completed,
     * and request the driver to send them to us. */
    if (setup_dma_callback(&axidma_dev) < 0) {
        close(axidma_dev.fd);
        return NULL;
    }

    // Return the AXI DMA device to the user
    initialized = true;
    return &axidma_dev;
}

// Tears down the given AXI DMA device structure
void axidma_destroy(axidma_dev_t dev)
{
    // Free the transmit and receive channel id arrays
    free(dev->tx_chan_ids);
    free(dev->rx_chan_ids);

    // Close the AXI DMA device
    if (close(dev->fd) < 0) {
        perror("Failed to close the AXI DMA device");
        assert(false);
    }

    // Free the device structure
    initialized = false;
    return;
}

// Returns an array of all the available AXI DMA transmit channels
int *axidma_get_dma_tx(axidma_dev_t dev, int *num_channels)
{
    *num_channels = dev->num_tx_chans;
    return dev->tx_chan_ids;
}

// Returns an array of all the available AXI DMA receive channels
int *axidma_get_dma_rx(axidma_dev_t dev, int *num_channels)
{
    *num_channels = dev->num_rx_chans;
    return dev->rx_chan_ids;
}

/* Allocates a region of memory suitable for use with the AXI DMA driver. Note
 * that this is a quite expensive operation, and should be done at initalization
 * time. */
void *axidma_malloc(axidma_dev_t dev, size_t size)
{
    void *addr;

    // Call the device's mmap method to allocate the memory region
    addr = mmap(NULL, size, PROT_READ|PROT_WRITE, MAP_SHARED, dev->fd, 0);
    if (addr == MAP_FAILED) {
        return NULL;
    }

    return addr;
}

/* This frees a region of memory that was allocated with a call to
 * axidma_malloc. The size passed in here must match the one used for that
 * call, or this function will throw an exception. */
void axidma_free(axidma_dev_t dev, void *addr, size_t size)
{
    // Silence the compiler
    (void)dev;

    if (munmap(addr, size) < 0) {
        perror("Failed to free the AXI DMA memory mapped region");
        assert(false);
    }

    return;
}

/* Sets up a callback function to be called whenever the transaction completes
 * on the given channel for asynchronous transfers. */
void axidma_set_callback(axidma_dev_t dev, int channel, axidma_cb_t callback,
                        void *data)
{
    struct dma_channel *chan;

    assert(channel_exists(dev, channel));

    chan = &dev->channels[channel];
    chan->callback = callback;
    chan->user_data = data;

    return;
}

/* Registers a DMA buffer allocated by another driver with the AXI DMA driver.
 * This allows it to be used in DMA transfers later on. The user must make sure
 * that the driver that allocated the buffer has exported it. The file
 * descriptor is the one that is returned by the other driver's export. */
int axidma_register_buffer(axidma_dev_t dev, int dmabuf_fd, void *user_addr,
                           size_t size)
{
    int rc;
    struct axidma_register_buffer register_buffer;

    // Setup the argument structure to the IOCTL
    register_buffer.fd = dmabuf_fd;
    register_buffer.size = size;
    register_buffer.user_addr = user_addr;

    // Perform the buffer registration with the driver
    rc = ioctl(dev->fd, AXIDMA_REGISTER_BUFFER, &register_buffer);
    if (rc < 0) {
        perror("Failed to register the external DMA buffer");
    }

    return rc;
}

/* Unregisters a DMA buffer preivously registered with the driver. This is
 * required to clean up the kernel data structures. */
void axidma_unregister_buffer(axidma_dev_t dev, void *user_addr)
{
    int rc;

    // Perform the deregistration with the driver
    rc = ioctl(dev->fd, AXIDMA_UNREGISTER_BUFFER, user_addr);
    if (rc < 0) {
        perror("Failed to unregister the external DMA buffer");
        assert(false);
    }

    return;
}


/* This performs a one-way transfer over AXI DMA, the direction being specified
 * by the user. The user determines if this is blocking or not with `wait. */
int axidma_oneway_transfer(axidma_dev_t dev, enum axidma_dir dir, int channel,
                           void *buf, size_t len, bool wait)
{
    int rc;
    struct axidma_transaction trans;
    unsigned long axidma_cmd;

    assert(dir == AXIDMA_READ || dir == AXIDMA_WRITE);
    assert(dir != AXIDMA_READ || valid_channel(dev, channel, AXIDMA_READ));
    assert(dir != AXIDMA_WRITE || valid_channel(dev, channel, AXIDMA_WRITE));

    // Setup the argument structure to the IOCTL
    trans.wait = wait;
    trans.channel_id = channel;
    trans.buf = buf;
    trans.buf_len = len;
    axidma_cmd = dir_to_ioctl(dir);

    // Perform the given transfer
    rc = ioctl(dev->fd, axidma_cmd, &trans);
    if (rc < 0) {
        perror("Failed to perform the AXI DMA transfer");
        return rc;
    }

    return 0;
}

/* This performs a two-way transfer over AXI DMA, both sending data out and
 * receiving it back over DMA. The user determines if this call is  blocking. */
int axidma_twoway_transfer(axidma_dev_t dev, int tx_channel, void *tx_buf,
        size_t tx_len, int rx_channel, void *rx_buf, size_t rx_len, bool wait)
{
    int rc;
    struct axidma_inout_transaction trans;

    assert(valid_channel(dev, tx_channel, AXIDMA_WRITE));
    assert(valid_channel(dev, rx_channel, AXIDMA_READ));

    // Setup the argument structure for the IOCTL
    trans.wait = wait;
    trans.tx_channel_id = tx_channel;
    trans.tx_buf = tx_buf;
    trans.tx_buf_len = tx_len;
    trans.rx_channel_id = rx_channel;
    trans.rx_buf = rx_buf;
    trans.rx_buf_len = rx_len;

    // Perform the read-write transfer
    rc = ioctl(dev->fd, AXIDMA_DMA_READWRITE, &trans);
    if (rc < 0) {
        perror("Failed to perform the AXI DMA read-write transfer");
    }

    return rc;
}

/* This function performs a video transfer over AXI DMA, setting up the DMA to
 * read from the given frame buffers on-demand continuously. This call is
 * always non-blocking. The transfer must be stopped with a call to
 * axidma_stop_transfer. */
int axidma_video_transfer(axidma_dev_t dev, int display_channel, size_t width,
        size_t height, size_t depth, void **frame_buffers, int num_buffers)
{
    int rc;
    struct axidma_video_transaction trans;

    assert(valid_channel(dev, display_channel, AXIDMA_WRITE));

    // Setup the argument structure for the IOCTL
    trans.channel_id = display_channel;
    trans.num_frame_buffers = num_buffers;
    trans.frame_buffers = frame_buffers;
    trans.width = width;
    trans.height = height;
    trans.depth = depth;

    // Perform the video transfer
    rc = ioctl(dev->fd, AXIDMA_DMA_VIDEO_WRITE, &trans);
    if (rc < 0) {
        perror("Failed to perform the AXI DMA video write transfer");
    }

    return rc;
}

/* This function stops all transfers on the given channel with the given
 * direction. This function is required to stop any video transfers, or any
 * non-blocking transfers. */
void axidma_stop_transfer(axidma_dev_t dev, int channel, enum axidma_dir dir)
{
    struct axidma_chan chan;

    assert(dir == AXIDMA_READ || dir == AXIDMA_WRITE);
    assert(dir != AXIDMA_READ || valid_channel(dev, channel, AXIDMA_READ));
    assert(dir != AXIDMA_WRITE || valid_channel(dev, channel, AXIDMA_WRITE));

    // Setup the argument structure for the IOCTL
    chan.channel_id = channel;
    chan.dir = dir;
    chan.type = AXIDMA_DMA;

    // Stop all transfers on the given DMA channel
    if (ioctl(dev->fd, AXIDMA_STOP_DMA_CHANNEL, &chan) < 0) {
        perror("Failed to stop the DMA channel");
        assert(false);
    }

    return;
}

/*----------------------------------------------------------------------------
 * Private Helper Functions
 *----------------------------------------------------------------------------*/

/* Probes the AXI DMA driver for all of the available channels. It places
 * returns an array of axidma_channel structures. */
static int probe_channels(axidma_dev_t dev)
{
    int rc;
    struct axidma_chan *channels;
    struct axidma_num_channels num_chan;
    struct axidma_channel_info channel_info;

    // Query the module for the total number of DMA channels
    rc = ioctl(dev->fd, AXIDMA_GET_NUM_DMA_CHANNELS, &num_chan);
    if (rc < 0) {
        perror("Unable to get the number of DMA channels");
        return rc;
    } else if (num_chan.num_channels == 0) {
        fprintf(stderr, "No DMA channels are present.\n");
        return -ENODEV;
    }

    // Allocate an array to hold the channel meta-data
    channels = malloc(num_chan.num_channels * sizeof(channels[0]));
    if (channels == NULL) {
        return -ENOMEM;
    }

    // Get the metdata about all the available channels
    channel_info.channels = channels;
    rc = ioctl(dev->fd, AXIDMA_GET_DMA_CHANNELS, &channel_info);
    if (rc < 0) {
        perror("Unable to get DMA channel information");
        free(channels);
        return rc;
    }

    // Extract the channel id's, and organize them by type
    rc = categorize_channels(dev, channels, &num_chan);
    free(channels);

    return rc;
}

/* Categorizes the DMA channels by their type and direction, getting their ID's
 * and placing them into separate arrays. */
static int categorize_channels(axidma_dev_t dev,
        struct axidma_chan *channels, struct axidma_num_channels *num_chan)
{
    int i;
    int tx_index, rx_index;
    struct axidma_chan *chan;
    struct dma_channel *dma_chan;

    // Allocate arrays for the channel ids, and the channel metadata
    dev->tx_chan_ids = malloc(num_chan->num_dma_tx_channels *
                              sizeof(dev->tx_chan_ids[0]));
    if (dev->tx_chan_ids == NULL) {
        return -ENOMEM;
    }
    dev->rx_chan_ids = malloc(num_chan->num_dma_rx_channels *
                              sizeof(dev->rx_chan_ids[0]));
    if (dev->rx_chan_ids == NULL) {
        free(dev->tx_chan_ids);
        return -ENOMEM;
    }
    dev->channels = malloc(num_chan->num_channels * sizeof(dev->channels[0]));
    if  (dev->channels == NULL) {
        free(dev->tx_chan_ids);
        free(dev->rx_chan_ids);
        return -ENOMEM;
    }

    // Place the DMA channel ID's into the appropiate array
    tx_index = 0;
    rx_index = 0;
    for (i = 0; i < num_chan->num_channels; i++)
    {
        // Assign the ID's into the appropiate array
        chan = &channels[i];
        if (chan->dir == AXIDMA_WRITE && chan->type == AXIDMA_DMA) {
            dev->tx_chan_ids[tx_index] = chan->channel_id;
            tx_index += 1;
        } else if (chan->dir == AXIDMA_READ && chan->type == AXIDMA_DMA) {
            dev->rx_chan_ids[rx_index] = chan->channel_id;
            rx_index += 1;
        }

        // Construct the DMA channel structure
        dma_chan = &dev->channels[i];
        dma_chan->dir = chan->dir;
        dma_chan->type = chan->type;
        dma_chan->callback = NULL;
        dma_chan->user_data = NULL;
    }
    assert(tx_index == num_chan->num_dma_tx_channels);
    assert(rx_index == num_chan->num_dma_rx_channels);

    // Assign the length of the arrays
    dev->num_tx_chans = tx_index;
    dev->num_rx_chans = rx_index;
    dev->num_chans = num_chan->num_channels;

    return 0;
}

/* Sets up a signal handler for the lowest real-time signal to be delivered
 * whenever any asynchronous DMA transaction compeletes. */
// TODO: Should really check if real time signal is being used
static int setup_dma_callback(axidma_dev_t dev)
{
    int rc;
    struct sigaction sigact;

    // Register a signal handler for the real-time signal
    sigact.sa_sigaction = axidma_callback;
    sigemptyset(&sigact.sa_mask);
    sigact.sa_flags = SA_RESTART | SA_SIGINFO;
    rc = sigaction(SIGRTMIN, &sigact, NULL);
    if (rc < 0) {
        perror("Failed to register DMA callback");
        return rc;
    }

    // Tell the driver to deliver us SIGRTMIN upon DMA completion
    rc = ioctl(dev->fd, AXIDMA_SET_DMA_SIGNAL, SIGRTMIN);
    if (rc < 0) {
        perror("Failed to set the DMA callback signal");
        return rc;
    }

    return 0;
}

static void axidma_callback(int signal, siginfo_t *siginfo, void *context)
{
    int channel_id;
    struct dma_channel *chan;

    assert(0 <= siginfo->si_int && siginfo->si_int < axidma_dev.num_chans);

    // Silence the compiler
    (void)signal;
    (void)context;

    // If the user defined a callback for a given channel, invoke it
    channel_id = siginfo->si_int;
    chan = &axidma_dev.channels[channel_id];
    if (chan->callback != NULL) {
        chan->callback(channel_id, chan->user_data);
    }

    return;
}

// Checks that the given channel id corresponds to an actual channel
static bool channel_exists(axidma_dev_t dev, int channel)
{
    return 0 <= channel && channel < dev->num_chans;
}

// Checks that the given channel is a valid id, searching through the arrays
static bool valid_channel(axidma_dev_t dev, int channel,
                          enum axidma_dir dir)
{
    struct dma_channel *dma_chan;

    // Check that the enumeration is sound
    if (!(dir == AXIDMA_WRITE || dir == AXIDMA_READ)) {
        return false;
    }

    // Check that the channel exists
    if (!channel_exists(dev, channel)) {
        return false;
    }

    // Verify that the given channel is the same direction
    dma_chan = &dev->channels[channel];
    return dma_chan->dir == dir;
}

// Converts the AXI DMA direction to the corresponding ioctl for the transfer
static unsigned long dir_to_ioctl(enum axidma_dir dir)
{
    switch (dir)
    {
        case AXIDMA_READ:
            return AXIDMA_DMA_READ;
        case AXIDMA_WRITE:
            return AXIDMA_DMA_WRITE;
    }

    assert(false);
    return 0;
}
