/**
 * @file triangle_intersect.h
 * @brief High level logic for the Triangle Intersection IP used in the FPGA
 *        design.
 * @author Justin Gallagher (jrgallag)
 * @since 05-05-2016
 */

#include "ap_axi_sdata.h"

// Performs a triangle intersection
void tri_intersect(ap_axis<32, 2, 5, 6> A[50], ap_axis<32, 2, 5, 6> B[50]);
