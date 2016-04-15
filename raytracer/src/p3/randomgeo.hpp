#ifndef _462_RANDOMGEO_HPP_
#define _462_RANDOMGEO_HPP_

#include "math/color.hpp"
#include "math/random462.hpp"
#include "p3/photon.hpp"
#include "p3/neighbor.hpp"
#include "application/opengl.hpp"
#include "scene/ray.hpp"
#include "scene/scene.hpp"
#include "p3/util.hpp"
#include "math/vector.hpp"
namespace _462 {
Vector3 random_sphere();
Vector3 random_hemisphere_indexed(real_t k,real_t n);
Vector3 random_sphere_indexed(int k,int n);
Vector3 random_hemisphere(Vector3 d);
}

#endif /*_462_RANDOMGEO_HPP_*/