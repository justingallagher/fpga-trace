/**
 * @file dma_util.c
 * @date Sunday, December 06, 2015 at 06:46:26 PM EST
 * @author Brandon Perez (bmperez)
 * @author Jared Choi (jaewonch)
 *
 * Contains some simple dma helper utilities. Note that these utilities are
 * not thread-safe, and should only be called from one thread.
 *
 * @bug No known bugs.
 **/

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

#include <string.h>             // Memory setting and copying
#include <errno.h>              // Error codes

#include "libaxidma.h"          // Interface to AXI DMA
#include "dma_util.h"           // DMA utility definitions

/*----------------------------------------------------------------------------
 * Private Definitions
 *----------------------------------------------------------------------------*/

/* The private global state. Contains an in use boolean for double checking
 * thread-safety, the DMA buffer for the leftover channels, and an array that
 * indicates which of the channels are actually valid */
static bool in_use = false;
static void *buffer = NULL;
static bool *rx_chan_valid = NULL;
static bool *tx_chan_valid = NULL;

// Forward declarations for helper functions
static void dispatch_transactions(axidma_dev_t dev, enum axidma_dir dir,
        int num_chan, int *chans, int tx_channel, int rx_channel, void *buffer,
        int buf_size, bool *chan_valid);
static void stop_transactions(axidma_dev_t dev, enum axidma_dir dir,
        int num_chan, int *chans, int tx_channel, int rx_channel,
        bool *chan_valid);

/*----------------------------------------------------------------------------
 * Public Interface
 *----------------------------------------------------------------------------*/

/* This function starts DMA transactions for all channels that are not the
 * specified one. This includes allocating a single buffer that they all share
 * (since we don't care about the results it doesn't matter). The size of this
 * buffer is BUF_SCALE * input_size. */
int start_remainder_transactions(axidma_dev_t dev, int tx_channel,
                                 int rx_channel, int tx_size)
{
    int buf_size;
    int num_tx, num_rx;
    int *tx_chans, *rx_chans;

    assert(!in_use);
    in_use = true;

    // Determine the total number of transmit and receive channels
    tx_chans = axidma_get_dma_tx(dev, &num_tx);
    if (num_tx < 1) {
        return -ENODEV;
    }
    rx_chans = axidma_get_dma_rx(dev, &num_rx);
    if (num_rx < 1) {
        return -ENODEV;
    }

    // Allocate an array of booleans to track which channels are valid
    tx_chan_valid = malloc(num_tx * sizeof(tx_chan_valid[0]));
    if (tx_chan_valid == NULL) {
        return -ENOMEM;
    }
    rx_chan_valid = malloc(num_rx * sizeof(rx_chan_valid[0]));
    if (tx_chan_valid == NULL) {
        free(tx_chan_valid);
        return -ENOMEM;
    }

    // Allocate a singel shared buffer for all DMA channels
    buf_size = tx_size * BUF_SCALE;
    buffer = axidma_malloc(dev, buf_size);
    if (buffer == NULL) {
        free(rx_chan_valid);
        free(tx_chan_valid);
        return -ENOMEM;
    }

    /* For any remainder channels, start the transactions in case the Tx/Rx
     * pipline has dependencies on them. */
    dispatch_transactions(dev, AXIDMA_WRITE, num_tx, tx_chans, tx_channel,
                          rx_channel, buffer, buf_size, tx_chan_valid);
    dispatch_transactions(dev, AXIDMA_READ, num_rx, rx_chans, tx_channel,
                          rx_channel, buffer, buf_size, rx_chan_valid);

    return 0;
}

int dispatch_remainder_transactions(axidma_dev_t dev, int tx_channel,
                                    int rx_channel, int tx_size)
{
    int buf_size;
    int num_tx, num_rx;
    int *tx_chans, *rx_chans;

    assert(in_use);

    // Determine the total number of transmit and receive channels
    tx_chans = axidma_get_dma_tx(dev, &num_tx);
    if (num_tx < 1) {
        return -ENODEV;
    }
    rx_chans = axidma_get_dma_rx(dev, &num_rx);
    if (num_rx < 1) {
        return -ENODEV;
    }

    /* For any remainder channels, start the transactions in case the Tx/Rx
     * pipline has dependencies on them. */
    buf_size = tx_size * BUF_SCALE;
    dispatch_transactions(dev, AXIDMA_WRITE, num_tx, tx_chans, tx_channel,
                          rx_channel, buffer, buf_size, tx_chan_valid);
    dispatch_transactions(dev, AXIDMA_READ, num_rx, rx_chans, tx_channel,
                          rx_channel, buffer, buf_size, rx_chan_valid);

    return 0;
}
void stop_remainder_transactions(axidma_dev_t dev, int tx_channel,
                                 int rx_channel, int tx_size)
{
    int buf_size;
    int num_tx, num_rx;
    int *tx_chans, *rx_chans;

    assert(in_use);

    // Determine the total number of transmit and receive channels
    tx_chans = axidma_get_dma_tx(dev, &num_tx);
    if (num_tx < 1) {
        return;
    }
    rx_chans = axidma_get_dma_rx(dev, &num_rx);
    if (num_rx < 1) {
        return;
    }

    // Stop the all the remainder transactions
    stop_transactions(dev, AXIDMA_WRITE, num_tx, tx_chans, tx_channel,
                      rx_channel, tx_chan_valid);
    stop_transactions(dev, AXIDMA_READ, num_rx, rx_chans, tx_channel,
                      rx_channel, rx_chan_valid);

    // Free the DMA buffer, and the valid arrays
    free(rx_chan_valid);
    free(tx_chan_valid);
    buf_size = tx_size * BUF_SCALE;
    axidma_free(dev, buffer, buf_size);

    in_use = false;
    return;

}

/*----------------------------------------------------------------------------
 * Private Helper Functions
 *----------------------------------------------------------------------------*/

// Dispatches transactions on all channels that are not the ones specified
static void dispatch_transactions(axidma_dev_t dev, enum axidma_dir dir,
        int num_chan, int *chans, int tx_channel, int rx_channel, void *buffer,
        int buf_size, bool *chan_valid)
{
    int i;

    for (i = 0; i < num_chan; i++)
    {
        // If the channel is either the input or output one, we skip it
        if (chans[i] == tx_channel || chans[i] == rx_channel) {
            continue;
        }

        if (axidma_oneway_transfer(dev, dir, chans[i], buffer, buf_size,
                                   false) < 0) {
            printf("Warning: Unable to start the transaction on channel %d.\n",
                    chans[i]);
            chan_valid[i] = false;
        } else {
            chan_valid[i] = false;
        }
    }

    return;
}

/* Stops all of transactions on the channels that were started up by a call to
 * to dispatch transaction, skipping the input channels, and any channels that
 * dispatch transaction failed to start up. */
static void stop_transactions(axidma_dev_t dev, enum axidma_dir dir,
        int num_chan, int *chans, int tx_channel, int rx_channel,
        bool *chan_valid)
{
    int i;

    for (i = 0; i < num_chan; i++)
    {
        // If the channel is either the input or output one, we skip it
        if (chans[i] == tx_channel || chans[i] == rx_channel) {
            continue;
        }

        // If a channel is marked as invalid, then we failed to start it
        if (!chan_valid[i]) {
            continue;
        }

        axidma_stop_transfer(dev, chans[i], dir);
    }

    return;
}
