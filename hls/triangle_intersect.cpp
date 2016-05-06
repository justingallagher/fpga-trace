/**
 * @file triangle_intersect.cpp
 * @brief Implements high level triangle intersection logic.
 * @author Justin Gallagher (jrgallag)
 * @since 05-05-2016
 */

#include "triangle_intersect.h"

/**
 * @brief Performs a triangle intersection test, outputting the time of
 *        intersection and the trilinear coordinates of the intersection
 *        location.
 * @param A Input stream.
 * @param B Output stream.
 */
void tri_intersect(ap_axis<32, 2, 5, 6> ins[2], ap_axis<32, 2, 5, 6> outs[1]) {

	outs[0].data = ins[0].data.to_int() + ins[1].data.to_int();
	outs[0].keep = ins[0].keep;
	outs[0].strb = ins[0].strb;
	outs[0].user = ins[0].user;
	outs[0].last = ins[0].last;
	outs[0].id = ins[0].id;
	outs[0].dest = ins[0].dest;
}
