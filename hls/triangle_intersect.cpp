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
 * @param ins Input stream.
 * @param outs Output stream.
 */
void tri_intersect(data_t ins[15], data_t outs[3]) {

	// Load data
	float v0x = ins[0].data;
	float v0y = ins[1].data;
	float v0z = ins[2].data;

	float v1x = ins[3].data;
	float v1y = ins[4].data;
	float v1z = ins[5].data;

	float v2x = ins[6].data;
	float v2y = ins[7].data;
	float v2z = ins[8].data;

	float rdx = ins[9].data;
	float rdy = ins[10].data;
	float rdz = ins[11].data;

	float rex = ins[12].data;
	float rey = ins[13].data;
	float rez = ins[14].data;

	// Compute t
	float a = v0x - v1x;
	float b = v0y - v1y;
	float c = v0z - v1z;
	float d = v0x - v2x;
	float e = v0y - v2y;
	float f = v0z - v2z;
	float g = rdx;
	float h = rdy;
	float i = rdz;
	float j = v0x - rex;
	float k = v0y - rey;
	float l = v0z - rez;

	float m = a*(e*i-h*f) + b*(g*f-d*i) + c*(d*h-e*g);
	float im = 1.0f/m;

	float t = (f*(a*k-j*b) + e*(j*c-a*l) + d*(b*l-k*c)) * -1.0f * im;

	// Compute gamma
	float gamma = (i*(a*k-j*b) + h*(j*c-a*l) + g*(b*l-k*c)) * im;

	// Compute beta
	float beta = (j*(e*i-h*f) + k*(g*f-d*i) + l*(d*h-e*g)) * im;

	// Set output
	outs[0].data = t;
	outs[0].dest = ins[14].dest;
	outs[0].id = ins[14].id;
	outs[0].keep = ins[14].keep;
	outs[0].last = 0;
	outs[0].strb = ins[14].strb;
	outs[0].user = ins[14].user;

	outs[1].data = gamma;
	outs[1].dest = ins[14].dest;
	outs[1].id = ins[14].id;
	outs[1].keep = ins[14].keep;
	outs[1].last = 0;
	outs[1].strb = ins[14].strb;
	outs[1].user = ins[14].user;

	outs[2].data = beta;
	outs[2].dest = ins[14].dest;
	outs[2].id = ins[14].id;
	outs[2].keep = ins[14].keep;
	outs[2].last = ins[14].last;
	outs[2].strb = ins[14].strb;
	outs[2].user = ins[14].user;
}
