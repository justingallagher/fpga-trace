//
//  random462.cpp
//  p4
//
//  Created by Nathan Dobson on 11/17/14.
//  Copyright (c) 2014 Nathan Dobson. All rights reserved.
//

#include <random>
#include <omp.h>
#include "math/math.hpp"
namespace _462{


/**
 * Generate a uniform random real_t on the interval [0, 1)
 */
real_t random_uniform();

/**
 * Generate a uniform random real_t from N(0, 1)
 */
real_t random_gaussian();

    /**
     * Generate a uniformly random integer between 0 (incl) and n (excl)
     */
int random_int(int n);

}; // _462
