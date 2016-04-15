/**
 * @file matrix.hpp
 * @brief Matrix classes.
 *
 * @author Eric Butler (edbutler)
 * @author Zeyang Li (zeyangl)
 */

#ifndef _462_MATH_MATRIX_HPP_
#define _462_MATH_MATRIX_HPP_

#include "math/math.hpp"
#include "math/vector.hpp"
#include <cassert>

namespace _462 {

/*
This file defines 2 matrix classes: 3x3 and 4x4.
Each comes with several operators and functions.
*/

class Quaternion;

/**
 * A 3x3 matrix.
 *
 * The matrix is in column-vector compatible notation and is stored
 * in memory by column first. So the memory layout looks like
 *
 * [ m[0] m[3] m[6] ]
 * [ m[1] m[4] m[7] ]
 * [ m[2] m[5] m[8] ]
 *
 * where vectors are treated as column matrices (3x1), i.e. vectors are
 * multiplied on the right of the matrix (M * V)
 *
 * NOTE: The notation mij or m[i][j] is the ith COLUMN and the jth ROW.
 *
 * The matrix is meant for use in linear transformations. Transformations must
 * be combined right-to-left, so if you want to apply A then B the C to a
 * vector V, you would use C*B*A*V.
 */
class Matrix3
{
public:
    /**
     * The identity matrix.
     */
    static const Matrix3 &Identity() {
        static const Matrix3 identity = Matrix3(1, 0, 0,
                                                0, 1, 0,
                                                0, 0, 1);
        return identity;
    }

    static const Matrix3 &Zero() {
        static const Matrix3 zero = Matrix3(0, 0, 0,
                                            0, 0, 0,
                                            0, 0, 0);
        return zero;
    }

    static const int DIM = 3;
    static const int SIZE = DIM*DIM;

    /**
     * The values of this matrix. Named as both a 1d array and a 2d array.
     */
    union {
        real_t m[SIZE];
        real_t _m[DIM][DIM]; // _m[column][row]
    };

    // constructors

    /**
     * Leaves values initialized. Its 2015 already.
     */
    Matrix3() {
        for(size_t i=0;i<SIZE;i++){
            m[i]=0;
        }
    }

    /**
     * Construct a matrix from the given array, in COLUMN MAJOR format
     */
    explicit Matrix3( real_t (&r)[SIZE] );

    /**
     * Construct a matrix from the given values in ROW MAJOR format.
     */
    Matrix3( real_t m00, real_t m10, real_t m20,
             real_t m01, real_t m11, real_t m21,
             real_t m02, real_t m12, real_t m22 );

    // basic operations
    Matrix3 operator+( const Matrix3& rhs ) const;
    Matrix3& operator+=( const Matrix3& rhs );
    Matrix3 operator-( const Matrix3& rhs ) const;
    Matrix3& operator-=( const Matrix3& rhs );
    Matrix3 operator*( const Matrix3& rhs ) const;
    Vector3 operator*( const Vector3& v ) const;
    Matrix3& operator*=( const Matrix3& rhs );
    Matrix3 operator*( real_t r ) const;
    Matrix3& operator*=( real_t r );
    Matrix3 operator/( real_t r ) const;
    Matrix3& operator/=( real_t r );
    Matrix3 operator-() const;

    // comparisons
    bool operator==( const Matrix3& rhs ) const;
    bool operator!=( const Matrix3& rhs ) const;

    // accessors

    /**
     * Matrix3(i,j) gives the element at the ith column and jth row.
     */
    const real_t& operator()( int col, int row ) const {
        assert( col >= 0 && col < DIM && row >= 0 && row < DIM );
        return _m[col][row];
    }

    /**
     * Matrix3(i,j) gives the element at the ith column and jth row.
     */
    real_t& operator()( int col, int row ) {
        assert( col >= 0 && col < DIM && row >= 0 && row < DIM );
        return _m[col][row];
    }
};

// computes the transpose of a matrix
void transpose( Matrix3* rv, const Matrix3& m );

// computes the inverse of a matrix
void inverse( Matrix3* rv, const Matrix3& m );

inline Matrix3 operator*( real_t r, const Matrix3& m ) {
    return m * r;
}

/**
 * A 4x4 matrix.
 *
 * The matrix is in column-vector compatible notation and is stored
 * in memory by column first. So the memory layout looks like
 *
 * [ m[0] m[4] m[ 8] m[12] ]
 * [ m[1] m[5] m[ 9] m[13] ]
 * [ m[2] m[6] m[10] m[14] ]
 * [ m[3] m[7] m[11] m[15] ]
 *
 * where vectors are treated as column matrices (4x1), i.e. vectors are
 * multiplied on the right of the matrix (M * V)
 *
 * NOTE: The notation mij or m[i][j] is the ith COLUMN and the jth ROW.
 *
 * The matrix is meant for use in transformations. Transformations must
 * be combined right-to-left, so if you want to apply A then B the C to a
 * vector V, you would use C*B*A*V.
 */
class Matrix4
{
public:
    /**
     * The identity matrix.
     */
    static const Matrix4 Identity() {
        static const Matrix4 identity = Matrix4(1, 0, 0, 0,
                                                0, 1, 0, 0,
                                                0, 0, 1, 0,
                                                0, 0, 0, 1);
        return identity;
    }

    /**
     * The zero matrix.
     */
    static const Matrix4 Zero() {
        static const Matrix4 zero = Matrix4(0, 0, 0, 0,
                                            0, 0, 0, 0,
                                            0, 0, 0, 0,
                                            0, 0, 0, 0);
        return zero;
    }

    static const int DIM = 4;
    static const int SIZE = DIM*DIM;

    /**
     * The values of this matrix. Named as both a 1d array and a 2d array.
     */
    union {
        real_t m[SIZE];
        real_t _m[DIM][DIM]; // _m[column][row]
    };

    // constructors

    /**
     * Leaves values initialized. Its 2015 already.
     */
    Matrix4() {
        for(size_t i=0;i<SIZE;i++){
            m[i]=0;
        }
    }

    /**
     * Construct a matrix from the given array, in COLUMN MAJOR format
     */
    explicit Matrix4( real_t (&r)[SIZE] );

    /**
     * Construct a matrix from the given values in ROW MAJOR format (A,B,C,D,E,F,G,H,I).
     */
    Matrix4( real_t m00, real_t m10, real_t m20, real_t m30,
             real_t m01, real_t m11, real_t m21, real_t m31,
             real_t m02, real_t m12, real_t m22, real_t m32,
             real_t m03, real_t m13, real_t m23, real_t m33 );

    // basic operations
    Matrix4 operator+( const Matrix4& rhs ) const;
    Matrix4& operator+=( const Matrix4& rhs );
    Matrix4 operator-( const Matrix4& rhs ) const;
    Matrix4& operator-=( const Matrix4& rhs );
    Matrix4 operator*( const Matrix4& rhs ) const;
    Vector4 operator*( const Vector4& v ) const;
    Matrix4& operator*=( const Matrix4& rhs );
    Matrix4 operator*( real_t r ) const;
    Matrix4& operator*=( real_t r );
    Matrix4 operator/( real_t r ) const;
    Matrix4& operator/=( real_t r );
    Matrix4 operator-() const;

    // comparaisons
    bool operator==( const Matrix4& rhs ) const;
    bool operator!=( const Matrix4& rhs ) const;

    // accessors

    /**
     * Matrix4(i,j) gives the element at the ith column and jth row.
     */
    const real_t& operator()( int col, int row ) const {
        assert( col >= 0 && col < DIM && row >= 0 && row < DIM );
        return _m[col][row];
    }

    /**
     * Matrix4(i,j) gives the element at the ith column and jth row.
     */
    real_t& operator()( int col, int row ) {
        assert( col >= 0 && col < DIM && row >= 0 && row < DIM );
        return _m[col][row];
    }

    /**
     * Transforms the given vector as if it were a point.
     * That is, returns the projection of (x,y,z,1) transformed
     * by the matrix.
     */
    Vector3 transform_point( const Vector3& v ) const {
        return project( *this *  Vector4( v, 1 ) );
    }

    /**
     * Transforms the given vector as if it were a direction.
     * That is, returns the projection of (x,y,z,0) transformed
     * by the matrix.
     */
    Vector3 transform_vector( const Vector3& v ) const {
        return (*this * Vector4( v, 0 ) ).xyz();
    }
};

inline Matrix4 operator*( real_t r, const Matrix4& m ) {
    return m * r;
}

/**
 * Creates a transformation matrix that will transform a point
 * by the given scale, then orientation, then position.
 */
void make_transformation_matrix(
    Matrix4* rv, const Vector3& pos, const Quaternion& ori, const Vector3& scl );

/**
 * Create a transformation matrix that is the inverse of that
 * generated by make_transformation_matrix.
 */
void make_inverse_transformation_matrix(
    Matrix4* rv, const Vector3& pos, const Quaternion& ori, const Vector3& scl );

/**
 * Create a normal transformation matrix that corresponds with the given
 * transformation matrix. That is, if tmat is used to transform vertex
 * positions, rv should be used to transform normal vectors.
 * @remark If tmat contains scaling, the resulting normal matrix will not
 *   produce non-unit vectors. You MUST NORMALIZE the resulting vectors
 *   after multiplying them by the normal matrix.
 */
void make_normal_matrix( Matrix3* rv, const Matrix4& tmat );

//construct a matrix from three column vectors
Matrix3 column_matrix3(Vector3 a,Vector3 b,Vector3 c);

std::ostream& operator<<( std::ostream& os, const Matrix3& rhs );
std::ostream& operator<<( std::ostream& os, const Matrix4& rhs );
Matrix3 row_matrix3(Vector3 a,Vector3 b,Vector3 c);

} /* _462 */

#endif /* _462_MATH_MATRIX_HPP_ */

