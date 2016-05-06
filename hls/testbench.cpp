/**
 * @file testbench.cpp
 * @brief Tests the hardware implementation of triangle intersect versus a
 *        software implementation, ensuring they behave identically.
 * @author Justin Gallagher (jrgallag)
 * @since 05-05-2016
 */

#include <stdio.h>
#include "triangle_intersect.h"

int main() {
    int i;
    ap_axis<32,2,5,6> A[2];
    ap_axis<32,2,5,6> B[1];

    for(i=0; i < 2; i++){
        A[i].data = i + 1;
        A[i].keep = 1;
        A[i].strb = 1;
        A[i].user = 1;
        A[i].last = 0;
        A[i].id = 0;
        A[i].dest = 1;
    }

    tri_intersect(A,B);

    if (B[0].data.to_int() != 3) {
        printf("ERROR: HW and SW results mismatch\n");
        return -1;
    }

    printf("Success: HW and SW results match\n");
    return 0;
}
