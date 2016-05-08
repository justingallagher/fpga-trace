/**
 * @file libaxidma.h
 * @date Saturday, December 05, 2015 at 10:14:44 AM EST
 * @author Brandon Perez (bmperez)
 * @author Jared Choi (jaewonch)
 *
 * This file defines the interface to the AXI DMA device through the AXI DMA
 * library.
 *
 * @bug No known bugs.
 **/

#ifndef LIBAXIDMA_H_
#define LIBAXIDMA_H_

#include "axidma_ioctl.h"

/* Forward declaration of the AXI DMA device structure. This is an opaque type
 * to the user, so they can only view it as a pointer. */
struct axidma_dev;
typedef struct axidma_dev* axidma_dev_t;

// The type of a callback function for AXI DMA transfer completion
typedef void (*axidma_cb_t)(int channel_id, void *data);

// Function prototypes for the interface
struct axidma_dev *axidma_init();
void axidma_destroy(axidma_dev_t dev);
int *axidma_get_dma_tx(axidma_dev_t dev, int *num_channels);
int *axidma_get_dma_rx(axidma_dev_t dev, int *num_channels);
void *axidma_malloc(axidma_dev_t dev, size_t size);
void axidma_free(axidma_dev_t dev, void *addr, size_t size);
int axidma_register_buffer(axidma_dev_t dev, int dmabuf_fd, void *user_addr,
                           size_t size);
void axidma_unregister_buffer(axidma_dev_t dev, void *user_addr);
void axidma_set_callback(axidma_dev_t dev, int channel, axidma_cb_t callback,
                        void *data);
int axidma_oneway_transfer(axidma_dev_t dev, enum axidma_dir dir, int channel,
                           void *buf, size_t len, bool wait);
int axidma_twoway_transfer(axidma_dev_t dev, int tx_channel, void *tx_buf,
        size_t tx_len, int rx_channel, void *rx_buf, size_t rx_len, bool wait);
int axidma_video_transfer(axidma_dev_t dev, int display_channel, size_t width,
        size_t height, size_t depth, void **frame_buffers, int num_buffers);
void axidma_stop_transfer(axidma_dev_t dev, int channel, enum axidma_dir dir);

#endif /* LIBAXIDMA_H_ */
