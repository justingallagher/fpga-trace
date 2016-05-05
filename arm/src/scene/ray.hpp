#ifndef _462_SCENE_RAY_HPP_
#define _462_SCENE_RAY_HPP_

#include "math/vector.hpp"
#include "math/quaternion.hpp"
#include "math/matrix.hpp"
#include "math/camera.hpp"
#include "scene/material.hpp"
#include "scene/mesh.hpp"
#include <string>
#include <vector>

namespace _462 {

class Ray
{

public:
    Vector3 e;
    Vector3 d;

    Ray();
    Ray(Vector3 e, Vector3 d);
    Vector3 atTime(real_t t){
    return e+d*t;
    }
};

std::ostream& operator<<( std::ostream& os, const Ray& rhs );

class Projector{
    Vector3 dir;
    Vector3 up;
    real_t AR;

    Vector3 cR;
    Vector3 cU;
    real_t dist;
    Vector3 pos;

public:
    Vector3 get_pixel_dir(real_t x, real_t y);
    void init(const Camera& camera);


};

}

#endif
