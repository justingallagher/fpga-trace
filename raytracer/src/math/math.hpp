/**
 * @file math.hpp
 * @brief General math declarations and definitions.
 *
 * @author Eric Butler (edbutler)
 * @author Zeyang Li (zeyangl)
 */

#ifndef _462_MATH_MATH_HPP_
#define _462_MATH_MATH_HPP_

#include <algorithm>
#include <cmath>

namespace _462 {


/* Comment this out to enable double precision arithmetic.
 * The speed and accuracy differences between single and double
 * precision are negligible, but space usage is drastically different.
 * For this reason, we recommend leaving this as is.
 *
 * Note that many parts of the code use the REAL_FLOAT macro
 * to define their behavior, not just the real_t typedef
 */
#define REAL_FLOAT 1

#ifdef REAL_FLOAT
typedef float real_t;
#else
typedef double real_t;
#endif

// http://en.wikipedia.org/wiki/Gamma_correction
#define GAMMA 1.0

class Color3;

// since the standard library happily does not provide one
#define PI 3.141592653589793238
// A small positive real number. Will be useful in ray casting.
#define EPS .0001

template<typename T>
inline T clamp( T val, T min, T max )
{
    return std::min( max, std::max( min, (T)pow((double)val,GAMMA) ) );
}


} /* _462 */

void theLinkerWantsSymbolsSoNowItHasOne();

#endif /* _462_MATH_MATH_HPP_ */

