/**
 * @file triangle_intersect.h
 * @brief High level logic for the Triangle Intersection IP used in the FPGA
 *        design.
 * @author Justin Gallagher (jrgallag)
 * @since 05-05-2016
 */

#ifndef _HLS_TRIANGLE_INTERSECT_H_
#define _HLS_TRIANGLE_INTERSECT_H_

#include "ap_int.h"

typedef struct {
	float data;
	ap_uint<4> keep;
	ap_uint<4> strb;
	ap_uint<1> user;
	ap_uint<1> last;
	ap_uint<1> id;
	ap_uint<1> dest;
} data_t;

// Performs a triangle intersection
void tri_intersect(data_t ins[15], data_t outs[3]);

#endif /* _HLS_TRIANGLE_INTERSECT_H_ */
