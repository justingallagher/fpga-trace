//
//  random462.cpp
//  p4
//
//  Created by Nathan Dobson on 11/17/14.
//  Copyright (c) 2014 Nathan Dobson. All rights reserved.
//

#include "math/random462.hpp"
#include <random>
#include <omp.h>
#include "math/math.hpp"
#include "limits.h"
namespace _462{


//initializes the (thread-local) random number generator
std::default_random_engine *init_rand(){
    std::default_random_engine *ret;
    std::uniform_int_distribution<int> dist(0,INT_MAX);
    std::random_device rd;
    ret=new std::default_random_engine(dist(rd));
    return ret;
}
thread_local std::default_random_engine *generator=init_rand();
/**
 * Generate a uniform random real_t on the interval [0, 1)
 */
real_t random_uniform()
{
    std::uniform_real_distribution<real_t> dist = std::uniform_real_distribution<real_t>();
    return dist(*generator);
}

/**
 * Generate a uniformly random integer between 0 (incl) and n (excl)
 */
int random_int(int n){
    std::uniform_int_distribution<> dist(0, n-1);
    return dist(*generator);
}

/**
 * Generate a uniform random real_t from N(0, 1)
 */
real_t random_gaussian()
{
    std::normal_distribution<real_t> dist =
        std::normal_distribution<real_t>();
    return dist(*generator);
}



}; // _462
