/**
 * @file triangle_intersect.cpp
 * @brief Implements high level triangle intersection logic.
 * @author Justin Gallagher (jrgallag)
 * @since 05-05-2016
 */

#include "triangle_intersect.h"

/**
 * @brief Performs math to determine when a ray intersects a triangle.
 * @param v0x, v0y, v0z: Coordinates of 1st triangle vertex.
 * @param v1x, v1y, v1z: Coordinates of 2nd triangle vertex.
 * @param v2x, v2y, v2z: Coordinates of 3rd triangle vertex.
 * @param rdx, rdy, rdz: Direction of ray.
 * @param rex, rey, rez: Origin point of ray.
 * @param t, gamma, beta: Pointers to store the results.
 */
inline void intersect(float v0x, float v0y, float v0z,
		float v1x, float v1y, float v1z, float v2x, float v2y, float v2z,
		float rdx, float rdy, float rdz, float rex, float rey, float rez,
		float *t, float *gamma, float *beta) {

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

	*t = (f*(a*k-j*b) + e*(j*c-a*l) + d*(b*l-k*c)) * -1.0f * im;

	// Compute gamma
	*gamma = (i*(a*k-j*b) + h*(j*c-a*l) + g*(b*l-k*c)) * im;

	// Compute beta
	*beta = (j*(e*i-h*f) + k*(g*f-d*i) + l*(d*h-e*g)) * im;
}

/**
 * @brief Performs a triangle intersection test, outputting the time of
 *        intersection and the trilinear coordinates of the intersection
 *        location.
 * @param ins Input stream.
 * @param outs Output stream.
 */
void tri_intersect(data_t ins[15 * PARALLEL_TESTS], data_t outs[3 * PARALLEL_TESTS]) {

	float v0x[PARALLEL_TESTS];
	float v0y[PARALLEL_TESTS];
	float v0z[PARALLEL_TESTS];
	float v1x[PARALLEL_TESTS];
	float v1y[PARALLEL_TESTS];
	float v1z[PARALLEL_TESTS];
	float v2x[PARALLEL_TESTS];
	float v2y[PARALLEL_TESTS];
	float v2z[PARALLEL_TESTS];
	float rdx[PARALLEL_TESTS];
	float rdy[PARALLEL_TESTS];
	float rdz[PARALLEL_TESTS];
	float rex[PARALLEL_TESTS];
	float rey[PARALLEL_TESTS];
	float rez[PARALLEL_TESTS];

	float t[PARALLEL_TESTS];
	float gamma[PARALLEL_TESTS];
	float beta[PARALLEL_TESTS];

	// Load data
	READ: for (int i = 0; i < PARALLEL_TESTS; i++) {
		int b = i * 15;

		v0x[i] = ins[b].data;
		v0y[i] = ins[b + 1].data;
		v0z[i] = ins[b + 2].data;

		v1x[i] = ins[b + 3].data;
		v1y[i] = ins[b + 4].data;
		v1z[i] = ins[b + 5].data;

		v2x[i] = ins[b + 6].data;
		v2y[i] = ins[b + 7].data;
		v2z[i] = ins[b + 8].data;

		rdx[i] = ins[b + 9].data;
		rdy[i] = ins[b + 10].data;
		rdz[i] = ins[b + 11].data;

		rex[i] = ins[b + 12].data;
		rey[i] = ins[b + 13].data;
		rez[i] = ins[b + 14].data;
	}

	WORK: for (int i = 0; i < PARALLEL_TESTS; i++) {
		intersect(v0x[i], v0y[i], v0z[i], v1x[i], v1y[i], v1z[i],
				v2x[i], v2y[i], v2z[i], rdx[i], rdy[i], rdz[i],
				rex[i], rey[i], rez[i], t + i, gamma + i, beta + i);
	}

	WRITE: for(int i = 0; i < PARALLEL_TESTS; i++) {
		int b = i * 3;

		outs[b].data = t[i];
		outs[b].dest = ins[PARALLEL_TESTS * 15 - 1].dest;
		outs[b].id = ins[PARALLEL_TESTS * 15 - 1].id;
		outs[b].keep = ins[PARALLEL_TESTS * 15 - 1].keep;
		outs[b].last = 0;
		outs[b].strb = ins[PARALLEL_TESTS * 15 - 1].strb;
		outs[b].user = ins[PARALLEL_TESTS * 15 - 1].user;

		outs[b+1].data = gamma[i];
		outs[b+1].dest = ins[PARALLEL_TESTS * 15 - 1].dest;
		outs[b+1].id = ins[PARALLEL_TESTS * 15 - 1].id;
		outs[b+1].keep = ins[PARALLEL_TESTS * 15 - 1].keep;
		outs[b+1].last = 0;
		outs[b+1].strb = ins[PARALLEL_TESTS * 15 - 1].strb;
		outs[b+1].user = ins[PARALLEL_TESTS * 15 - 1].user;

		outs[b+2].data = beta[i];
		outs[b+2].dest = ins[PARALLEL_TESTS * 15 - 1].dest;
		outs[b+2].id = ins[PARALLEL_TESTS * 15 - 1].id;
		outs[b+2].keep = ins[PARALLEL_TESTS * 15 - 1].keep;
		outs[b+2].last = 0;
		outs[b+2].strb = ins[PARALLEL_TESTS * 15 - 1].strb;
		outs[b+2].user = ins[PARALLEL_TESTS * 15 - 1].user;
	}

	outs[3 * PARALLEL_TESTS - 1].last = ins[PARALLEL_TESTS * 15 - 1].last;
}
