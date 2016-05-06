/**
 * @file testbench.cpp
 * @brief Tests the hardware implementation of triangle intersect versus a
 *        software implementation, ensuring they behave identically.
 * @author Justin Gallagher (jrgallag)
 * @since 05-05-2016
 */

#include <stdio.h>
#include "triangle_intersect.h"

bool float_equal(float a, float b) {
	const float TOLERANCE = 0.0001;

	return (a - TOLERANCE < b && a + TOLERANCE > b);
}

int main() {
    data_t A[2];
    data_t B[1];

    for (int i = 0; i < 2; i ++) {
    	A[i].data = 1.1f * ((float) (i + 3));
		A[i].keep = 1;
		A[i].strb = 1;
		A[i].user = 1;
		A[i].last = 0;
		A[i].id = 0;
		A[i].dest = 1;
    }

    tri_intersect(A, B);

    if (!float_equal(A[0].data + A[1].data, B[0].data)) {
        printf("ERROR: HW and SW results mismatch. SW: %f HW: %f\n", 4.1f, B[0].data);
        return -1;
    }

    printf("Success: HW and SW results match\n");
    return 0;
}
