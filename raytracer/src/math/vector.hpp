/**
 * @file vector.hpp
 * @brief Vector classes.
 *
 * @author Eric Butler (edbutler)
 */

#ifndef _462_MATH_VECTOR_HPP_
#define _462_MATH_VECTOR_HPP_

#include "math/math.hpp"
#include <algorithm>
#include <cassert>
#include <cmath>
#include <iostream>

namespace _462 {

/*
This file defines 3 different vector classes: 2D, 3D, and 4D.
Each class overrides most sensible operators and have functions
for other operators such as dot product, length, and normalization.

All named functions do not mutate their arguments but rather return
a new vector. So, for example, you must do
    v = normalize( v );
in order to make v a unit vector. Some operators (e.g., +=) mutate
their first argument, as with built-in numerical types.

Most operations are inline functions because it results in a noticeable
speed increase in most applications.
*/
/**
 * A 2d vector.
 */
class Vector2
{
public:
    void print(){
        std::cout << x << " " << y << std::endl;
    }

    /**
     * The number of dimensions.
     */
    static const size_t DIM = 2;

    /**
     * The zero vector.
     */
    static const Vector2 &Zero() {
        static const Vector2 zero(0.0, 0.0);
        return zero;
    }

    /**
     * The vector (1,1).
     */
    static const Vector2 &Ones() {
        static const Vector2 ones(1.0, 1.0);
        return ones;
    }

    /**
     * The vector (1,0).
     */
    static const Vector2 &UnitX() {
        static const Vector2 unitx(1.0, 0.0);
        return unitx;
    }

    /**
     * The vector (0,1).
     */
    static const Vector2 &UnitY() {
        static const Vector2 unity(0.0, 1.0);
        return unity;
    }

    /**
     * Components of this vector.
     */
    real_t x, y;

    /**
     * Default constructor. Leaves values unitialized.
     */
    Vector2() {}

    /**
     * Create a vector with the given values.
     */
    Vector2( real_t x, real_t y )
        : x( x ), y( y ) {}

    // also uses default copy and assignment

    Vector2 operator+( const Vector2& rhs ) const {
        return Vector2( x + rhs.x, y + rhs.y );
    }

    Vector2& operator+=( const Vector2& rhs ) {
        x += rhs.x;
        y += rhs.y;
        return *this;
    }

    Vector2 operator-( const Vector2& rhs ) const {
        return Vector2( x - rhs.x, y - rhs.y );
    }

    Vector2& operator-=( const Vector2& rhs ) {
        x -= rhs.x;
        y -= rhs.y;
        return *this;
    }

    Vector2 operator*( real_t s ) const {
        return Vector2( x * s, y * s );
    }

    Vector2& operator*=( real_t s ) {
        x *= s;
        y *= s;
        return *this;
    }

    Vector2 operator/( real_t s ) const {
        real_t inv = 1.0 / s;
        return Vector2( x * inv, y * inv );
    }

    Vector2& operator/=( real_t s ) {
        real_t inv = 1.0 / s;
        x *= inv;
        y *= inv;
        return *this;
    }

    Vector2 operator-() const {
        return Vector2( -x, -y );
    }

    /**
     * @remark No bounds checking.
     */
    const real_t& operator[]( size_t i ) const {
        // assumes all members are in a contiguous block
        assert( i < DIM );
        return ( &x )[i];
    }

    /**
     * @remark No bounds checking.
     */
    real_t& operator[]( size_t i ) {
        // assumes all members are in a contiguous block
        assert( i < DIM );
        return ( &x )[i];
    }

    bool operator==( const Vector2& rhs ) const {
        return x == rhs.x && y == rhs.y;
    }

    bool operator!=( const Vector2& rhs ) const {
        return !operator==( rhs );
    }

    void to_array( float arr[DIM] ) const {
        arr[0] = float( x );
        arr[1] = float( y );
    }
};

/**
 * Returns the dot product of two vectors
 */
inline real_t dot( const Vector2& lhs, const Vector2& rhs ) {
    return lhs.x * rhs.x + lhs.y * rhs.y;
}

/**
 * Efficiency function: does not require square root operation.
 */
inline real_t squared_length( const Vector2& v ) {
    return v.x * v.x + v.y * v.y;
}

/**
 * Returns the length of a vector.
 */
inline real_t length( const Vector2& v ) {
    return sqrt( squared_length( v ) );
}

/**
 * Calculate the positive distance between two vectors.
 */
inline real_t distance( const Vector2& lhs, const Vector2& rhs ) {
    return length( lhs - rhs );
}

/**
 * Efficiency function: does not require square root operation.
 */
inline real_t squared_distance( const Vector2& lhs, const Vector2& rhs ) {
    return squared_length( lhs - rhs );
}

/**
 * Returns the unit vector pointing in the same direction as this vector.
 */
inline Vector2 normalize( const Vector2& v ) {
    return v / length( v );
}

/**
 * Returns a vector whose elements are the absolute values of all the
 * elements of this vector.
 */
inline Vector2 vabs( const Vector2& v ) {
    return Vector2( fabs( v.x ), fabs( v.y ) );
}

/**
 * Returns the element-wise maximum of the two vectors.
 */
inline Vector2 vmax( const Vector2& lhs, const Vector2& rhs ) {
    return Vector2(
        std::max( lhs.x, rhs.x ),
        std::max( lhs.y, rhs.y )
    );
}

/**
 * Returns the element-wise minimum of the two vectors.
 */
inline Vector2 vmin( const Vector2& lhs, const Vector2& rhs ) {
    return Vector2(
        std::min( lhs.x, rhs.x ),
        std::min( lhs.y, rhs.y )
    );
}

inline Vector2 operator*( real_t s, const Vector2& rhs ) {
    return rhs * s;
}

/**
 * A 3d vector.
 */
class Vector3
{
public:

    /**
     * The number of dimensions.
     */
    static const size_t DIM = 3;

    /**
     * The zero vector.
     */
    static const Vector3 &Zero() {
        static const Vector3 zero(0.0, 0.0, 0.0);
        return zero;
    }

    /**
     * The vector (1,1,1).
     */
    static const Vector3 &Ones() {
        static const Vector3 ones(1.0, 1.0, 1.0);
        return ones;
    }

    /**
     * The vector (1,0,0)
     */
    static const Vector3 &UnitX() {
        static const Vector3 unitx(1.0, 0.0, 0.0);
        return unitx;
    }

    /**
     * The vector (0,1,0)
     */
    static const Vector3 &UnitY() {
        static const Vector3 unity(0.0, 1.0, 0.0);
        return unity;
    }

    /**
     * The vector (0,0,1)
     */
    static const Vector3 &UnitZ() {
        static const Vector3 unitz(0.0, 0.0, 1.0);
        return unitz;
    }

    /**
     * Components of this vector.
     */
    real_t x, y, z;

    /**
     * Default constructor. Leaves values unitialized.
     */
    Vector3() {}

    /**
     * Create a vector with the given values.
     */
    Vector3( real_t x, real_t y, real_t z )
        : x( x ), y( y ), z( z ) {}

    /**
     * Create a vector from a 2d vector.
     */
    Vector3( const Vector2& v, real_t z )
        : x( v.x ), y( v.y ), z( z ) { }

    /**
     * Create a vector from a float array.
     */
    explicit Vector3( const float arr[3] )
        : x( arr[0] ), y( arr[1] ), z( arr[2] ) { }

    // also uses default copy and assignment

    Vector3 operator+( const Vector3& rhs ) const {
        return Vector3( x + rhs.x, y + rhs.y, z + rhs.z );
    }

    Vector3& operator+=( const Vector3& rhs ) {
        x += rhs.x;
        y += rhs.y;
        z += rhs.z;
        return *this;
    }

    Vector3 operator-( const Vector3& rhs ) const {
        return Vector3( x - rhs.x, y - rhs.y, z - rhs.z );
    }

    Vector3& operator-=( const Vector3& rhs ) {
        x -= rhs.x;
        y -= rhs.y;
        z -= rhs.z;
        return *this;
    }

    Vector3 operator*( real_t s ) const {
        return Vector3( x * s, y * s, z * s );
    }

    Vector3& operator*=( real_t s ) {
        x *= s;
        y *= s;
        z *= s;
        return *this;
    }

    Vector3 operator/( real_t s ) const {
        real_t inv = 1.0 / s;
        return Vector3( x * inv, y * inv, z * inv );
    }

    Vector3& operator/=( real_t s ) {
        real_t inv = 1.0 / s;
        x *= inv;
        y *= inv;
        z *= inv;
        return *this;
    }

    Vector3 operator-() const {
        return Vector3( -x, -y, -z );
    }

    /**
     * @remark No bounds checking.
     */
    const real_t& operator[]( size_t i ) const {
        // assumes all members are in a contiguous block
        assert( i < DIM );
        return ( &x )[i];
    }

    /**
     * @remark No bounds checking.
     */
    real_t& operator[]( size_t i ) {
        // assumes all members are in a contiguous block
        assert( i < DIM );
        return ( &x )[i];
    }

    bool operator==( const Vector3& rhs ) const {
        return x == rhs.x && y == rhs.y && z == rhs.z;
    }

    bool operator!=( const Vector3& rhs ) const {
        return !operator==( rhs );
    }

    void to_array( float arr[DIM] ) const {
        arr[0] = float( x );
        arr[1] = float( y );
        arr[2] = float( z );
    }
    void print(){
        std::cout << x << " " << y << " " << z << std::endl;
    }

};

/**
 * Returns the dot product of two vectors
 */
inline real_t dot( const Vector3& lhs, const Vector3& rhs ) {
    return lhs.x * rhs.x + lhs.y * rhs.y + lhs.z * rhs.z;
}

/**
 * Returns the cross product of two vectors
 */
inline Vector3 cross( const Vector3& lhs, const Vector3& rhs ) {
    return Vector3(
        lhs.y * rhs.z - lhs.z * rhs.y,
        lhs.z * rhs.x - lhs.x * rhs.z,
        lhs.x * rhs.y - lhs.y * rhs.x
    );
}

/**
 * Efficiency function: does not require square root operation.
 */
inline real_t squared_length( const Vector3& v ) {
    return v.x * v.x + v.y * v.y + v.z * v.z;
}

/**
 * Returns the length of a vector.
 */
inline real_t length( const Vector3& v ) {
    return sqrt( squared_length( v ) );
}

/**
 * Calculate the positive distance between two vectors.
 */
inline real_t distance( const Vector3& lhs, const Vector3& rhs ) {
    return length( lhs - rhs );
}

/**
 * Efficiency function: does not require square root operation.
 */
inline real_t squared_distance( const Vector3& lhs, const Vector3& rhs ) {
    return squared_length( lhs - rhs );
}

/**
 * Returns the unit vector pointing in the same direction as this vector.
 */
inline Vector3 normalize( const Vector3& v ) {
    return v / length( v );
}

/**
 * Returns a vector whose elements are the absolute values of all the
 * elements of this vector.
 */
inline Vector3 vabs( const Vector3& v ) {
    return Vector3( fabs( v.x ), fabs( v.y ), fabs( v.z ) );
}

/**
 * Returns the element-wise maximum of the two vectors.
 */
inline Vector3 vmax( const Vector3& lhs, const Vector3& rhs ) {
    return Vector3(
        std::max( lhs.x, rhs.x ),
        std::max( lhs.y, rhs.y ),
        std::max( lhs.z, rhs.z )
    );
}

/**
 * Returns the element-wise minimum of the two vectors.
 */
inline Vector3 vmin( const Vector3& lhs, const Vector3& rhs ) {
    return Vector3(
        std::min( lhs.x, rhs.x ),
        std::min( lhs.y, rhs.y ),
        std::min( lhs.z, rhs.z )
    );
}

inline Vector3 operator*( real_t s, const Vector3& rhs ) {
    return rhs * s;
}

/**
 * A 4d vector.
 */
class Vector4
{
public:

    /**
     * The number of dimensions.
     */
    static const size_t DIM = 4;

    /**
     * The zero vector.
     */
    static const Vector4 &Zero() {
        static const Vector4 zero(0.0, 0.0, 0.0, 0.0);
        return zero;
    }

    /**
     * The vector (1,1,1,1).
     */
    static const Vector4 &Ones() {
        static const Vector4 ones(1.0, 1.0, 1.0, 1.0);
        return ones;
    }

    /**
     * The vector (1,0,0,0)
     */
    static const Vector4 &UnitX() {
        static const Vector4 unitx(1.0, 0.0, 0.0, 0.0);
        return unitx;
    }

    /**
     * The vector (0,1,0,0)
     */
    static const Vector4 &UnitY() {
        static const Vector4 unity(0.0, 1.0, 0.0, 0.0);
        return unity;
    }

    /**
     * The vector (0,0,1,0)
     */
    static const Vector4 &UnitZ() {
        static const Vector4 unitz(0.0, 0.0, 1.0, 0.0);
        return unitz;
    }

    /**
     * The vector (0,0,0,1)
     */
    static const Vector4 &UnitW() {
        static const Vector4 unitw(0.0, 0.0, 0.0, 1.0);
        return unitw;
    }

    /**
     * Components of this vector.
     */
    real_t x, y, z, w;

    /**
     * Default constructor. Leaves values unitialized.
     */
    Vector4() {}

    /**
     * Create a vector with the given values.
     */
    Vector4( real_t x, real_t y, real_t z, real_t w )
        : x( x ), y( y ), z( z ), w( w ) {}

    /**
     * Create the vector (v.x, v.y, v.z, w).
     */
    Vector4( const Vector3& v, real_t w )
        : x( v.x ), y( v.y ), z( v.z ), w( w ) {}

    // also uses default copy and assignment

    Vector4 operator+( const Vector4& rhs ) const {
        return Vector4( x + rhs.x, y + rhs.y, z + rhs.z, w + rhs.w );
    }

    Vector4& operator+=( const Vector4& rhs ) {
        x += rhs.x;
        y += rhs.y;
        z += rhs.z;
        w += rhs.w;
        return *this;
    }

    Vector4 operator-( const Vector4& rhs ) const {
        return Vector4( x - rhs.x, y - rhs.y, z - rhs.z, w - rhs.w );
    }

    Vector4& operator-=( const Vector4& rhs ) {
        x -= rhs.x;
        y -= rhs.y;
        z -= rhs.z;
        w -= rhs.w;
        return *this;
    }

    Vector4 operator*( real_t s ) const {
        return Vector4( x * s, y * s, z * s, w * s );
    }

    Vector4& operator*=( real_t s ) {
        x *= s;
        y *= s;
        z *= s;
        w *= s;
        return *this;
    }

    Vector4 operator/( real_t s ) const {
        real_t inv = 1.0 / s;
        return Vector4( x * inv, y * inv, z * inv, w * inv );
    }

    Vector4& operator/=( real_t s ) {
        real_t inv = 1.0 / s;
        x *= inv;
        y *= inv;
        z *= inv;
        w *= inv;
        return *this;
    }

    Vector4 operator-() const {
        return Vector4( -x, -y, -z, -w );
    }

    /**
     * @remark No bounds checking.
     */
    const real_t& operator[]( size_t i ) const {
        // assumes all members are in a contiguous block
        assert( i < DIM );
        return ( &x )[i];
    }

    /**
     * @remark No bounds checking.
     */
    real_t& operator[]( size_t i ) {
        // assumes all members are in a contiguous block
        assert( i < DIM );
        return ( &x )[i];
    }

    bool operator==( const Vector4& rhs ) const {
        return x == rhs.x && y == rhs.y && z == rhs.z && w == rhs.w;
    }

    bool operator!=( const Vector4& rhs ) const {
        return !operator==( rhs );
    }

    /**
     * Returns the first three components, ignoring the fourth
     */
    Vector3 xyz() const {
        return Vector3( x, y, z );
    }

    void to_array( float arr[DIM] ) const {
        arr[0] = float( x );
        arr[1] = float( y );
        arr[2] = float( z );
        arr[3] = float( w );
    }
    
    void print(){
        std::cout << x << " " << y << " " << z << " " << w << std::endl;
    }
};

/**
 * Returns the 3d vector corresponding to this 4d vector.
 * @remark If w==0, returns (x,y,z).
 */
inline Vector3 project( const Vector4& v ) {
    real_t winv = v.w == 0.0 ? 1.0 : 1.0 / v.w;
    return Vector3( v.x * winv, v.y * winv, v.z * winv );
}

/**
 * Returns the dot product of two vectors
 */
inline real_t dot( const Vector4& lhs, const Vector4& rhs ) {
    return lhs.x * rhs.x + lhs.y * rhs.y + lhs.z * rhs.z + lhs.w * rhs.w;
}

/**
 * Efficiency function: does not require square root operation.
 */
inline real_t squared_length( const Vector4& v ) {
    return v.x * v.x + v.y * v.y + v.z * v.z + v.w * v.w;
}

/**
 * Returns the length of a vector.
 */
inline real_t length( const Vector4& v ) {
    return sqrt( squared_length( v ) );
}

/**
 * Calculate the positive distance between two vectors.
 */
inline real_t distance( const Vector4& lhs, const Vector4& rhs ) {
    return length( lhs - rhs );
}

/**
 * Efficiency function: does not require square root operation.
 */
inline real_t squared_distance( const Vector4& lhs, const Vector4& rhs ) {
    return squared_length( lhs - rhs );
}

/**
 * Returns the unit vector pointing in the same direction as this vector.
 */
inline Vector4 normalize( const Vector4& v ) {
    return v / length( v );
}

/**
 * Returns a vector whose elements are the absolute values of all the
 * elements of this vector.
 */
inline Vector4 vabs( const Vector4& v ) {
    return Vector4( fabs( v.x ), fabs( v.y ), fabs( v.z ), fabs( v.w ) );
}

/**
 * Returns the element-wise maximum of the two vectors.
 */
inline Vector4 vmax( const Vector4& lhs, const Vector4& rhs ) {
    return Vector4(
        std::max( lhs.x, rhs.x ),
        std::max( lhs.y, rhs.y ),
        std::max( lhs.z, rhs.z ),
        std::max( lhs.w, rhs.w )
    );
}

/**
 * Returns the element-wise minimum of the two vectors.
 */
inline Vector4 vmin( const Vector4& lhs, const Vector4& rhs ) {
    return Vector4(
        std::min( lhs.x, rhs.x ),
        std::min( lhs.y, rhs.y ),
        std::min( lhs.z, rhs.z ),
        std::min( lhs.w, rhs.w )
    );
}

inline Vector4 operator*( real_t s, const Vector4& rhs ) {
    return rhs * s;
}


static std::ostream& operator<<( std::ostream& os, const Vector2& v )
{
    return os << '(' << v.x << ',' << v.y << ')';
}

static std::ostream& operator<<( std::ostream& os, const Vector3& v )
{
    return os << '(' << v.x << ',' << v.y << ',' << v.z << ')';
}

static std::ostream& operator<<( std::ostream& os, const Vector4& v )
{
    return os << '(' << v.x << ',' << v.y << ',' << v.z << ',' << v.w << ')';
}
} /* _462 */

#endif /* _462_MATH_VECTOR_HPP_ */

