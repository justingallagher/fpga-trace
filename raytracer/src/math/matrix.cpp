/**
 * @file matrix.cpp
 * @brief Matrix classes.
 *
 * @author Eric Butler (edbutler)
 * @author Zeyang Li (zeyangl)
 */

#include "math/matrix.hpp"
#include "math/quaternion.hpp"

#include <cstring>

namespace _462 {

Matrix3::Matrix3( real_t (&r)[SIZE] )
{
    memcpy( m, r, sizeof r );
}

Matrix3::Matrix3( real_t m00, real_t m10, real_t m20,
                  real_t m01, real_t m11, real_t m21,
                  real_t m02, real_t m12, real_t m22 )
{
    _m[0][0] = m00;
    _m[1][0] = m10;
    _m[2][0] = m20;
    _m[0][1] = m01;
    _m[1][1] = m11;
    _m[2][1] = m21;
    _m[0][2] = m02;
    _m[1][2] = m12;
    _m[2][2] = m22;
}

Matrix3 Matrix3::operator+( const Matrix3& rhs ) const
{
    Matrix3 rv;
    for ( int i = 0; i < SIZE; i++ )
        rv.m[i] = m[i] + rhs.m[i];
    return rv;
}

Matrix3& Matrix3::operator+=( const Matrix3& rhs )
{
    for ( int i = 0; i < SIZE; i++ )
        m[i] += rhs.m[i];
    return *this;
}

Matrix3 Matrix3::operator-( const Matrix3& rhs ) const
{
    Matrix3 rv;
    for ( int i = 0; i < SIZE; i++ )
        rv.m[i] = m[i] - rhs.m[i];
    return rv;
}

Matrix3& Matrix3::operator-=( const Matrix3& rhs )
{
    for ( int i = 0; i < SIZE; i++ )
        m[i] -= rhs.m[i];
    return *this;
}

Matrix3 Matrix3::operator*( const Matrix3& rhs ) const
{
    Matrix3 product;
    for ( int i = 0; i < DIM; ++i )
        for ( int j = 0; j < DIM; ++j )
            product._m[i][j] =
                _m[0][j] * rhs._m[i][0] + _m[1][j] * rhs._m[i][1] +
                _m[2][j] * rhs._m[i][2];
    return product;
}

Vector3 Matrix3::operator*( const Vector3& v ) const
{
    return Vector3( _m[0][0]*v.x + _m[1][0]*v.y + _m[2][0]*v.z,
                    _m[0][1]*v.x + _m[1][1]*v.y + _m[2][1]*v.z,
                    _m[0][2]*v.x + _m[1][2]*v.y + _m[2][2]*v.z );
}

Matrix3& Matrix3::operator*=( const Matrix3& rhs )
{
    return *this = operator*( rhs );
}

Matrix3 Matrix3::operator*( real_t r ) const
{
    Matrix3 rv;
    for ( int i = 0; i < SIZE; i++ )
        rv.m[i] = m[i] * r;
    return rv;
}

Matrix3& Matrix3::operator*=( real_t r )
{
    for ( int i = 0; i < SIZE; i++ )
        m[i] *= r;
    return *this;
}

Matrix3 Matrix3::operator/( real_t r ) const
{
    Matrix3 rv;
    real_t inv = 1 / r;
    for ( int i = 0; i < SIZE; i++ )
        rv.m[i] = m[i] * inv;
    return rv;
}

Matrix3& Matrix3::operator/=( real_t r )
{
    real_t inv = 1 / r;
    for ( int i = 0; i < SIZE; i++ )
        m[i] *= inv;
    return *this;
}

Matrix3 Matrix3::operator-() const
{
    Matrix3 rv;
    for ( int i = 0; i < SIZE; i++ )
        rv.m[i] = -m[i];
    return rv;
}

bool Matrix3::operator==( const Matrix3& rhs ) const
{
    return memcmp( m, rhs.m, sizeof m ) == 0;
}

bool Matrix3::operator!=( const Matrix3& rhs ) const
{
    return !operator==( rhs );
}

void transpose( Matrix3* rv, const Matrix3& m )
{
    rv->_m[0][0] = m._m[0][0];
    rv->_m[0][1] = m._m[1][0];
    rv->_m[0][2] = m._m[2][0];
    rv->_m[1][0] = m._m[0][1];
    rv->_m[1][1] = m._m[1][1];
    rv->_m[1][2] = m._m[2][1];
    rv->_m[2][0] = m._m[0][2];
    rv->_m[2][1] = m._m[1][2];
    rv->_m[2][2] = m._m[2][2];
}

void inverse( Matrix3* rv, const Matrix3& m )
{
    rv->_m[0][0] = m._m[1][1] * m._m[2][2] - m._m[1][2] * m._m[2][1];
    rv->_m[0][1] = m._m[0][2] * m._m[2][1] - m._m[0][1] * m._m[2][2];
    rv->_m[0][2] = m._m[0][1] * m._m[1][2] - m._m[0][2] * m._m[1][1];
    rv->_m[1][0] = m._m[1][2] * m._m[2][0] - m._m[1][0] * m._m[2][2];
    rv->_m[1][1] = m._m[0][0] * m._m[2][2] - m._m[0][2] * m._m[2][0];
    rv->_m[1][2] = m._m[0][2] * m._m[1][0] - m._m[0][0] * m._m[1][2];
    rv->_m[2][0] = m._m[1][0] * m._m[2][1] - m._m[1][1] * m._m[2][0];
    rv->_m[2][1] = m._m[0][1] * m._m[2][0] - m._m[0][0] * m._m[2][1];
    rv->_m[2][2] = m._m[0][0] * m._m[1][1] - m._m[0][1] * m._m[1][0];

    real_t det = m._m[0][0] * rv->_m[0][0] +
                 m._m[0][1] * rv->_m[1][0] +
                 m._m[0][2] * rv->_m[2][0];

    real_t invdet = 1.0 / det;
    for ( int i = 0; i < Matrix3::SIZE; i++ )
        rv->m[i] *= invdet;
}

Matrix4::Matrix4( real_t (&r)[SIZE] )
{
    memcpy( m , r, sizeof r );
}

Matrix4::Matrix4( real_t m00, real_t m10, real_t m20, real_t m30,
                  real_t m01, real_t m11, real_t m21, real_t m31,
                  real_t m02, real_t m12, real_t m22, real_t m32,
                  real_t m03, real_t m13, real_t m23, real_t m33 )
{
    _m[0][0] = m00;
    _m[1][0] = m10;
    _m[2][0] = m20;
    _m[3][0] = m30;
    _m[0][1] = m01;
    _m[1][1] = m11;
    _m[2][1] = m21;
    _m[3][1] = m31;
    _m[0][2] = m02;
    _m[1][2] = m12;
    _m[2][2] = m22;
    _m[3][2] = m32;
    _m[0][3] = m03;
    _m[1][3] = m13;
    _m[2][3] = m23;
    _m[3][3] = m33;
}


Matrix4 Matrix4::operator+( const Matrix4& rhs ) const
{
    Matrix4 rv;
    for ( int i = 0; i < SIZE; i++ )
        rv.m[i] = m[i] + rhs.m[i];
    return rv;
}

Matrix4& Matrix4::operator+=( const Matrix4& rhs )
{
    for ( int i = 0; i < SIZE; i++ )
        m[i] += rhs.m[i];
    return *this;
}

Matrix4 Matrix4::operator-( const Matrix4& rhs ) const
{
    Matrix4 rv;
    for ( int i = 0; i < SIZE; i++ )
        rv.m[i] = m[i] - rhs.m[i];
    return rv;
}

Matrix4& Matrix4::operator-=( const Matrix4& rhs )
{
    for ( int i = 0; i < SIZE; i++ )
        m[i] -= rhs.m[i];
    return *this;
}

Matrix4 Matrix4::operator*( const Matrix4& rhs ) const
{
    Matrix4 product;
    for ( int i = 0; i < DIM; ++i )
        for ( int j = 0; j < DIM; ++j )
            product._m[i][j] =
                _m[0][j] * rhs._m[i][0] + _m[1][j] * rhs._m[i][1] +
                _m[2][j] * rhs._m[i][2] + _m[3][j] * rhs._m[i][3];
    return product;
}

Vector4 Matrix4::operator*( const Vector4& v ) const
{
    return Vector4( _m[0][0]*v.x + _m[1][0]*v.y + _m[2][0]*v.z + _m[3][0]*v.w,
                    _m[0][1]*v.x + _m[1][1]*v.y + _m[2][1]*v.z + _m[3][1]*v.w,
                    _m[0][2]*v.x + _m[1][2]*v.y + _m[2][2]*v.z + _m[3][2]*v.w,
                    _m[0][3]*v.x + _m[1][3]*v.y + _m[2][3]*v.z + _m[3][3]*v.w );
}

Matrix4& Matrix4::operator*=( const Matrix4& rhs )
{
    return *this = operator*( rhs );
}

Matrix4 Matrix4::operator*( real_t r ) const
{
    Matrix4 rv;
    for ( int i = 0; i < SIZE; i++ )
        rv.m[i] = m[i] * r;
    return rv;
}

Matrix4& Matrix4::operator*=( real_t r )
{
    for ( int i = 0; i < SIZE; i++ )
        m[i] *= r;
    return *this;
}

Matrix4 Matrix4::operator/( real_t r ) const
{
    Matrix4 rv;
    real_t inv = 1 / r;
    for ( int i = 0; i < SIZE; i++ )
        rv.m[i] = m[i] * inv;
    return rv;
}

Matrix4& Matrix4::operator/=( real_t r )
{
    real_t inv = 1 / r;
    for ( int i = 0; i < SIZE; i++ )
        m[i] *= inv;
    return *this;
}

Matrix4 Matrix4::operator-() const
{
    Matrix4 rv;
    for ( int i = 0; i < SIZE; i++ )
        rv.m[i] = -m[i];
    return rv;
}

bool Matrix4::operator==( const Matrix4& rhs ) const
{
    return memcmp( m, rhs.m, sizeof m ) == 0;
}

bool Matrix4::operator!=( const Matrix4& rhs ) const
{
    return !operator==( rhs );
}

static void make_translation_matrix( Matrix4* mat, const Vector3& pos )
{
    *mat = Matrix4(
        1.0, 0.0, 0.0, pos.x,
        0.0, 1.0, 0.0, pos.y,
        0.0, 0.0, 1.0, pos.z,
        0.0, 0.0, 0.0, 1.0 );
}

static void make_scaling_matrix( Matrix4* mat, const Vector3& scl )
{
    *mat = Matrix4(
        scl.x, 0.0,   0.0,   0.0,
        0.0,   scl.y, 0.0,   0.0,
        0.0,   0.0,   scl.z, 0.0,
        0.0,   0.0,   0.0,   1.0 );
}


void make_transformation_matrix(
    Matrix4* mat, const Vector3& pos, const Quaternion& ori, const Vector3& scl )
{
    Matrix4 sclmat, orimat;

    ori.to_matrix( &orimat );
    make_scaling_matrix( &sclmat, scl );
    *mat = orimat * sclmat;
    // don't need to actually do the multiplication, can take shortcut
    // since we're multiplying translation by a linear matrix
    mat->m[12] = pos.x;
    mat->m[13] = pos.y;
    mat->m[14] = pos.z;
}

void make_inverse_transformation_matrix(
    Matrix4* mat, const Vector3& pos, const Quaternion& ori, const Vector3& scl )
{
    // assumes orientation is normalized
    Matrix4 sclmat, orimat, trnmat;

    make_scaling_matrix( &sclmat, Vector3( 1.0 / scl.x, 1.0 / scl.y, 1.0 / scl.z ) );
    conjugate( ori ).to_matrix( &orimat );
    make_translation_matrix( &trnmat, -pos );

    *mat = sclmat * orimat * trnmat;
}

/** algorithm from:  http://www.mathwords.com/c/cofactor.htm **/
void make_normal_matrix( Matrix3* rv, const Matrix4& tmat )
{
    Matrix3 tmp1, tmp2;

    tmp1._m[0][0] = tmat._m[0][0];
    tmp1._m[0][1] = tmat._m[0][1];
    tmp1._m[0][2] = tmat._m[0][2];
    tmp1._m[1][0] = tmat._m[1][0];
    tmp1._m[1][1] = tmat._m[1][1];
    tmp1._m[1][2] = tmat._m[1][2];
    tmp1._m[2][0] = tmat._m[2][0];
    tmp1._m[2][1] = tmat._m[2][1];
    tmp1._m[2][2] = tmat._m[2][2];

    inverse( &tmp2, tmp1 );
    transpose( rv, tmp2 );
}
std::ostream& operator<<( std::ostream& os, const Matrix3& x ){
    std::cout << x._m[0][0] << " " << x._m[1][0] << " " << x._m[2][0] << std::endl;
    std::cout << x._m[0][1] << " " << x._m[1][1] << " " << x._m[2][1] << std::endl;
    std::cout << x._m[0][2] << " " << x._m[1][2] << " " << x._m[2][2] << std::endl;
    std::cout << std::endl;
    return os;
}
std::ostream& operator<<( std::ostream& os, const Matrix4& x ){
    std::cout << x._m[0][0] << " " << x._m[1][0] << " " << x._m[2][0] << " " << x._m[3][0] << std::endl;
    std::cout << x._m[0][1] << " " << x._m[1][1] << " " << x._m[2][1] << " " << x._m[3][1] << std::endl;
    std::cout << x._m[0][2] << " " << x._m[1][2] << " " << x._m[2][2] << " " << x._m[3][2] << std::endl;
    std::cout << x._m[0][3] << " " << x._m[1][3] << " " << x._m[2][3] << " " << x._m[3][3] << std::endl;
    std::cout << std::endl;
    return os;
}


Matrix3 column_matrix3(Vector3 a,Vector3 b,Vector3 c){
    return Matrix3(a.x,b.x,c.x,a.y,b.y,c.y,a.z,b.z,c.z);
}
Matrix3 row_matrix3(Vector3 a,Vector3 b,Vector3 c){
    return Matrix3(a.x,a.y,a.z,b.x,b.y,b.z,c.x,c.y,c.z);
}

} /* _462 */

