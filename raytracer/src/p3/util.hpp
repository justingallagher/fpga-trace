#ifndef _462_CASTER_HPP_
#define _462_CASTER_HPP_

#include "math/color.hpp"
#include "math/random462.hpp"
#include "application/opengl.hpp"
#include "scene/ray.hpp"
#include "scene/scene.hpp"

namespace _462 {

class Intersection;

// max number of threads OpenMP can use. Change this if you like.
#define MAX_THREADS 4

// width of ARM NEON SIMD registers, in bytes.
#define SIMD_WIDTH 16

//maximum depth of the recursive (sampling) tracing
#define MAX_DEPTH 10

//increase lighting by a factor
#define WATT_BOOST 10.0

//the number of samples used in the direct (shadow) estimate
#define DIRECT_SAMPLE_COUNT 50

real_t computeFresnelCoefficient(Intersection &next,Ray &ray,real_t index,real_t newIndex);

/**
 * @brief Reflects a vector around the norm.
 * @param norm: Norm to reflect around.
 * @param inc: Incoming ray to reflect and reverse.
 * @return: Reflected vector.
 */
Vector3 inline reflect(Vector3 norm, Vector3 inc) {
    return inc - 2 * dot(norm, inc) * norm;
}

/**
 * @brief Approximates the fresnel coefficient for a surface at the specified
 *        angle using the Schlick approximation.
 * @param theta: Angle of incidence.
 * @param refractive_index: Refractive index for the surface being entered.
 */
real_t inline schlick(real_t theta, real_t refractive_index) {
    real_t r0 = (refractive_index - 1) / (refractive_index + 1);
    r0 *= r0;
    return r0 + (1 - r0) * pow((1 - cos(theta)), 5);
}

/**
 * @brief Calculates the direction of a refracted ray.
 * @param norm: Surface normal.
 * @param inc: Incoming ray direction.
 * @param ratio: Ratio of the refractive indices for the surfaces.
 * @param out: Where to store output vector.
 * @return: True if successful refraction, false if total internal reflection.
 */
bool inline refract(Vector3 norm,Vector3 inc,real_t ratio, Vector3 *out) {
    real_t dot_prod = dot(norm, inc);
    real_t root = 1 - ratio * ratio * (1 - dot_prod * dot_prod);
    if (root < 0) return false;
    *out = ratio * (inc - norm * dot_prod) - norm * sqrt(root);
    return true;
}

real_t montecarlo(Color3& light);

}
#endif /*_462_CASTER_HPP_*/
