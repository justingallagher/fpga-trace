/**
 * @file quaternion.cpp
 * @brief A quaternion class.
 *
 * @author Eric Butler (edbutler)
 * @author Zeyang Li (zeyangl)
 */

#include "math/quaternion.hpp"

#include "math/matrix.hpp"

namespace _462 {

static void make_unit( Quaternion& q )
{
    real_t maginv = 1.0 / sqrt( norm( q ) );
    q.x *= maginv;
    q.y *= maginv;
    q.z *= maginv;
    q.w *= maginv;
}

Quaternion::Quaternion( const Vector3& axis, real_t radians )
{
    radians *= 0.5;
    Vector3 naxis = normalize( axis );
    real_t sine = sin( radians );

    w = cos( radians );
    x = sine * naxis.x;
    y = sine * naxis.y;
    z = sine * naxis.z;

    make_unit( *this );
}

Quaternion::Quaternion( const Matrix4& mat )
{
    // Algorithm in Ken Shoemake's article in 1987 SIGGRAPH course notes
    // article "Quaternion Calculus and Fast Animation".

    real_t trace = mat._m[0][0] + mat._m[1][1] + mat._m[2][2];
    real_t root;

    if ( trace > 0.0 ) {
        // |w| > 1/2, may as well choose w > 1/2
        root = sqrt( trace + 1.0 );  // 2w
        w = 0.5 * root;
        root = 0.5 / root;  // 1/(4w)
        x = ( mat._m[2][1] - mat._m[1][2] ) * root;
        y = ( mat._m[0][2] - mat._m[2][0] ) * root;
        z = ( mat._m[1][0] - mat._m[0][1] ) * root;
    } else {
        // |w| <= 1/2
        static size_t next[3] = { 1, 2, 0 };
        size_t i = 0;
        if ( mat._m[1][1] > mat._m[0][0] )
            i = 1;
        if ( mat._m[2][2] > mat._m[i][i] )
            i = 2;
        size_t j = next[i];
        size_t k = next[j];

        root = sqrt( mat._m[i][i] - mat._m[j][j] - mat._m[k][k] + 1.0 );
        x = 0.5 * root;
        root = 0.5 / root;
        w = ( mat._m[k][j] - mat._m[j][k] ) * root;
        y = ( mat._m[j][i] + mat._m[i][j] ) * root;
        z = ( mat._m[k][i] + mat._m[i][k] ) * root;
    }
}

Quaternion Quaternion::operator*( const Quaternion& rhs ) const
{
    return Quaternion(
       w * rhs.w - x * rhs.x - y * rhs.y - z * rhs.z,
       w * rhs.x + x * rhs.w + y * rhs.z - z * rhs.y,
       w * rhs.y + y * rhs.w + z * rhs.x - x * rhs.z,
       w * rhs.z + z * rhs.w + x * rhs.y - y * rhs.x
    );
}

Vector3 Quaternion::operator*( const Vector3& v ) const
{
    // nVidia SDK implementation
    Vector3 qvec( x, y, z );
    Vector3 uv = cross( qvec, v );
    Vector3 uuv = cross( qvec, uv );
    uv *= ( 2.0 * w );
    uuv *= 2.0;

    return v + uv + uuv;
}

void Quaternion::to_axis_angle( Vector3* axis, real_t* angle ) const
{
    // The quaternion representing the rotation is
    // q = cos(A/2)+sin(A/2)*(x*i+y*j+z*k)
    real_t norm = x * x + y * y + z * z;
    if ( norm > 0.0 ) {
        *angle = 2.0 * acos( w );
        real_t inverse_length = 1 / sqrt( norm );
        axis->x = x * inverse_length;
        axis->y = y * inverse_length;
        axis->z = z * inverse_length;
    } else {
        // angle is 0 (mod 2*pi), so any axis will do
        *angle = 0.0;
        *axis = Vector3::UnitX();
    }
}

static void rotate_axes( const Quaternion& quat,
                         real_t ax[3], real_t ay[3], real_t az[3] )
{
    real_t x2  = 2.0 * quat.x;
    real_t y2  = 2.0 * quat.y;
    real_t z2  = 2.0 * quat.z;
    real_t xw2 = x2 * quat.w;
    real_t yw2 = y2 * quat.w;
    real_t zw2 = z2 * quat.w;
    real_t xx2 = x2 * quat.x;
    real_t xy2 = y2 * quat.x;
    real_t xz2 = z2 * quat.x;
    real_t yy2 = y2 * quat.y;
    real_t yz2 = z2 * quat.y;
    real_t zz2 = z2 * quat.z;

    ax[0] = 1.0 - ( yy2 + zz2 );
    ax[1] = xy2 + zw2;
    ax[2] = xz2 - yw2;

    ay[0] = xy2 - zw2;
    ay[1] = 1.0 - ( xx2 + zz2 );
    ay[2] = yz2 + xw2;

    az[0] = xz2 + yw2;
    az[1] = yz2 - xw2;
    az[2] = 1.0 - ( xx2 + yy2 );
}

void Quaternion::to_matrix( Matrix3* matp ) const
{
    Matrix3& mat = *matp;
    rotate_axes( *this, &mat( 0, 0 ), &mat( 1, 0 ), &mat( 2, 0 ) );
}

void Quaternion::to_matrix( Matrix4* matp ) const
{
    Matrix4& mat = *matp;
    rotate_axes( *this, &mat( 0, 0 ), &mat( 1, 0 ), &mat( 2, 0 ) );

    mat( 0, 3 ) = 0;
    mat( 1, 3 ) = 0;
    mat( 2, 3 ) = 0;
    mat( 3, 0 ) = 0;
    mat( 3, 1 ) = 0;
    mat( 3, 2 ) = 0;
    mat( 3, 3 ) = 1;
}

void Quaternion::to_axes( Vector3 axes[3] ) const
{
    rotate_axes( *this, &axes[0][0], &axes[1][0], &axes[2][0] );
}

Quaternion normalize( const Quaternion& q )
{
    Quaternion rv( q );
    make_unit( rv );
    return rv;
}

Quaternion conjugate( const Quaternion& q )
{
    return Quaternion( q.w, -q.x, -q.y, -q.z );
}

std::ostream& operator <<( std::ostream& o, const Quaternion& q )
{
    o << "Quaternion(" << q.w << ", " << q.x << ", " << q.y << ", " << q.z << ")";
    return o;
}

} /* _462 */

