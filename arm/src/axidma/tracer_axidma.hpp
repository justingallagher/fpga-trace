/**
 * @file tracer_axidma.hpp
 * @brief Definitions for functions interacting with the FPGA hardware through
 *        Direct Memory Access (DMA).
 * @author Justin Gallagher (jrgallag)
 * @since 05-07-2016
 */

#ifndef _AXIDMA_TRACERAXIDMA_HPP_
#define _AXIDMA_TRACERAXIDMA_HPP_

#include <sys/mman.h>
#include <stdio.h>

extern "C" {
    #include "axidma/libaxidma.h"
    #include "axidma/dma_util.h"
}

#define PARALLEL_TESTS 20

namespace _462 {

    class AxiDma {
        public:
            AxiDma(size_t tx_size, size_t rx_size);
            virtual ~AxiDma();

            // Sends the contents of tx_buf to the hardware, and stores the
            // result in rx_buf.
            int transfer();

            char* tx_buf;
            char* rx_buf;

            size_t tx_size, rx_size;

        private:
            axidma_dev_t axidma_dev;
            int tx_channel, rx_channel;
    };
}

#endif /* _AXIDMA_TRACERAXIDMA_HPP_ */
