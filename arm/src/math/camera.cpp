/**
 * @file camera.cpp
 * @brief Camera class
 *
 * @author Eric Butler (edbutler)
 */

#include "math/camera.hpp"

namespace _462 {

Camera::Camera()
    : position( Vector3::Zero() ),
      orientation( Quaternion::Identity() ),
      fov( PI / 4.0 ),
      aspect( 1 ),
      near_clip( .1 ),
      far_clip( 10 )
    { }

const Vector3& Camera::get_position() const
{
    return position;
}

Vector3 Camera::get_direction() const
{
    return orientation * -Vector3::UnitZ();
}

Vector3 Camera::get_up() const
{
    return orientation * Vector3::UnitY();
}

real_t Camera::get_fov_radians() const
{
    return fov;
}

real_t Camera::get_fov_degrees() const
{
    return fov * 180.0 / PI;
}

real_t Camera::get_aspect_ratio() const
{
    return aspect;
}

real_t Camera::get_near_clip() const
{
    return near_clip;
}

real_t Camera::get_far_clip() const
{
    return far_clip;
}

void Camera::translate( const Vector3& v )
{
    position += orientation * v;
}

void Camera::pitch( real_t radians )
{
    rotate( orientation * Vector3::UnitX(), radians );
}


void Camera::roll( real_t radians )
{
    rotate( orientation * Vector3::UnitZ(), radians );
}

void Camera::yaw( real_t radians )
{
    rotate( orientation * Vector3::UnitY(), radians );
}

void Camera::rotate( const Vector3& axis, real_t radians )
{
    orientation = normalize( Quaternion( axis, radians ) * orientation );
}

} /* _462 */
