/**
 * @file color.hpp
 * @brief Color class
 *
 * @author Eric Butler (edbutler)
 */

#ifndef _462_MATH_COLOR_HPP_
#define _462_MATH_COLOR_HPP_

#include "math/math.hpp"
#include <iostream>
#include <cassert>

namespace _462 {

/**
 * An RGB color/light intensity.
 */
class Color3
{
public:

    /**
     * The number of dimensions.
     */
    static const size_t DIM = 3;

    static const Color3 &Black() {
        static const Color3 black(0.0, 0.0, 0.0);
        return black;
    }

    static const Color3 &White() {
        static const Color3 white(1.0, 1.0, 1.0);
        return white;
    }

    static const Color3 &Red() {
        static const Color3 red(1.0, 0.0, 0.0);
        return red;
    }

    static const Color3 &Green() {
        static const Color3 green(0.0, 1.0, 0.0);
        return green;
    }

    static const Color3 &Blue() {
        static const Color3 blue(0.0, 0.0, 1.0);
        return blue;
    }

    /**
     * Components of this color.
     */
    real_t r, g, b;
    /**
     * Default constructor. Leaves values initialized: it's 2015 already.
     */
    Color3(): r(0), g(0), b(0){}

    /**
     * Create a color with the given values.
     */
    Color3( real_t r, real_t g, real_t b )
        : r( r ), g( g ), b( b ) {}

    /**
     * Converts 4-byte RGBA to a color, ignoring alpha.
     */
    Color3( const unsigned char* arr );

    // also uses default copy and assignment

    Color3 operator+( const Color3& rhs ) const {
        return Color3( r + rhs.r, g + rhs.g, b + rhs.b );
    }

    Color3 operator-( const Color3& rhs) const
    {
        return Color3(r - rhs.r, g - rhs.g, b - rhs.b);
    }

    Color3& operator+=( const Color3& rhs ) {
        r += rhs.r;
        g += rhs.g;
        b += rhs.b;
        return *this;
    }

    Color3 operator*( const Color3& rhs ) const {
        return Color3( r * rhs.r, g * rhs.g, b * rhs.b );
    }

    Color3& operator*=( const Color3& rhs ) {
        r *= rhs.r;
        g *= rhs.g;
        b *= rhs.b;
        return *this;
    }

    Color3 operator*( real_t s ) const {
        return Color3( r * s, g * s, b * s );
    }

    Color3& operator*=( real_t s ) {
        r *= s;
        g *= s;
        b *= s;
        return *this;
    }

    bool operator==( const Color3& rhs ) const {
        return r == rhs.r && g == rhs.g && b == rhs.b;
    }

    bool operator!=( const Color3& rhs ) const {
        return !operator==( rhs );
    }

    const real_t& operator[]( size_t i ) const {
        switch(i){
            case 0:return r;
            case 1:return g;
            case 2:return b;
            default: abort();
        }
    }

    real_t& operator[]( size_t i ) {
        switch(i){
            case 0:return r;
            case 1:return g;
            case 2:return b;
            default: abort();
        }
    }

    /**
     * Converts a color to 4-byte RGBA with alpha 1.0.
     */
    void to_array4( unsigned char arr[4] ) const;
    /**
     * Converts a color to a 3-byte RGB 
    */
    void to_array3( unsigned char arr[3] ) const;

    /**
     * Puts color in an array of 3 floats.
     */
    void to_array( float arr[DIM] ) const;
    
    //if the color is exactly black
    bool isBlack(){return r==0 && g==0 && b==0;}
    //if each color coordinate corresponds to a real number, and not NaN or infinity
    bool isReal(){return std::isfinite(r) && std::isfinite(g) && std::isfinite(b);}

    bool approx(real_t a,real_t b){return fabs(a-b)<.000001;}
    //if the saturation of the color is about zero, i.e. "grey"
    bool isGrey(){return approx(r,g) && approx(r,b) && approx(g,b);}
};

inline Color3 operator*( real_t s, const Color3& c ) {
    return c * s;
}

Color3 clamp( const Color3& c, real_t min, real_t max );

/**
 * Outputs a color text formatted as "(r,g,b)".
 */
std::ostream& operator<<( std::ostream& os, const Color3& rhs );

} /* _462 */

#endif /* _462_MATH_COLOR_HPP_ */

