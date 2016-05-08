/**
 * @file tracer_axidma.hpp
 * @brief Implementations for functions interacting with the FPGA hardware
 *        through Direct Memory Access (DMA).
 * @author Justin Gallagher (jrgallag)
 * @since 05-07-2016
 */

#include "axidma/tracer_axidma.hpp"

namespace _462 {

    AxiDma::AxiDma(size_t tx_size, size_t rx_size) {

        this->tx_size = tx_size;
        this->rx_size = rx_size;

        // Initialize the AXI DMA device
        axidma_dev = axidma_init();
        if (axidma_dev == NULL) {
            fprintf(stderr, "Failed to initialize the AXI DMA device.\n");
            return;
        }

        // Map memory regions for the transmit and receive buffers
        tx_buf = axidma_malloc(axidma_dev, tx_size);
        if (tx_buf == NULL) {
            perror("Unable to allocatememory region from AXI DMA device");
            return;
        }
        rx_buf = axidma_malloc(axidma_dev, rx_size);
        if (rx_buf == MAP_FAILED) {
            perror("Unable to allocate memory region from AXI DMA device");
            return;
        }

        // Get all the transmit and receive channels
        tx_chans = axidma_get_dma_tx(axidma_dev, &num_tx);
        if (num_tx < 1) {
            fprintf(stderr, "Error: No transmit channels were found.\n");
            return;
        }
        rx_chans = axidma_get_dma_rx(axidma_dev, &num_rx);
        if (num_rx < 1) {
            fprintf(stderr, "Error: No receive channels were found.\n");
            return;
        }

        tx_channel = tx_chans[0];
        rx_channel = rx_chans[0];
    }

    AxiDma::~AxiDma() {
        if (rx_buf != NULL) axidma_free(axidma_dev, rx_buf, rx_size);
        if (tx_buf != NULL) axidma_free(axidma_dev, tx_buf, tx_size);
        if (axidma_dev != NULL) axidma_destroy(axidma_dev);
    }

    int AxiDma::transfer() {
        int rc;

        /* Start all the remainder Tx and Rx transaction in case the main
         * transaction has any dependencies with them. */
        rc = start_remainder_transactions(axidma_dev, tx_channel, rx_channel,
                tx_size);
        if (rc < 0) {
            fprintf(stderr, "Unable to start remainder transactions.\n");
            goto stop_rem;
        }

        // Perform the main transaction
        rc = axidma_twoway_transfer(axidma_dev, tx_channel, tx_buf, tx_size,
                rx_channel, rx_buf, rx_size, true);
        if (rc < 0) {
            goto stop_rem;
        }

        // Stop all the remainder transactions
stop_rem:
        stop_remainder_transactions(dev, tx_channel, rx_channel, tx_size);

        return rc;
    }
}
