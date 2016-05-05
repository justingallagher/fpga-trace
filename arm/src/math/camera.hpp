/**
 * @file camera.hpp
 * @brief Camera class
 *
 * @author Eric Butler (edbutler)
 */

#ifndef _462_MATH_CAMERA_HPP_
#define _462_MATH_CAMERA_HPP_

#include "math/vector.hpp"
#include "math/quaternion.hpp"

namespace _462 {

/**
 * Stores position data of the camera.
 */
class Camera
{
public:
    Camera();

    // accessor functions

    // Returns the world position.
    const Vector3& get_position() const;
    // Returns the direction vector, a unit vector pointing in the direction
    // the camera is facing. Note that this is NOT the target, but rather the
    // DIRECTION of the camera.
    Vector3 get_direction() const;
    // Returns the up vector, a unit vector pointing in the direction up from
    // the camera's orientation.
    Vector3 get_up() const;
    // Returns the field of view in radians of the y-axis.
    real_t get_fov_radians() const;
    // Returns the field of view in degrees of the y-axis.
    real_t get_fov_degrees() const;
    // Returns the aspect ratio (width/height).
    real_t get_aspect_ratio() const;
    // Returns the distance from the camera to the near clipping plane.
    real_t get_near_clip() const;
    // Returns the distance from the camera to the far clipping plane.
    real_t get_far_clip() const;

    // mutator functions

    // translates camera position by v
    void translate( const Vector3& v );
    // rotates camera about its X axis
    void pitch( real_t radians );
    // rotates camera about its Z axis
    void roll( real_t radians );
    // rotates camera about its Y axis
    void yaw( real_t radians );
    // rotates camera about the given axis
    void rotate( const Vector3& axis, real_t radians );

    // members

    // The world position of the camera.
    Vector3 position;
    // The orientation of the camera, relative to a default direction
    // of negative z axis and default up vector of y axis.
    Quaternion orientation;
    // Field of view of y-axis, in radians.
    real_t fov;
    // The aspect ratio.
    real_t aspect;
    // The near clipping plane.
    real_t near_clip;
    // The far clipping plane.
    real_t far_clip;
};

} /* _462 */

#endif /* _462_MATH_CAMERA_HPP_ */

