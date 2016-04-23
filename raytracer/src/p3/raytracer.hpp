/**
 * @file raytacer.hpp
 * @brief Raytracer class
 *
 * Implement these functions for project 3.
 *
 * @author H. Q. Bovik (hqbovik)
 * @author Justin Gallagher (jrgallag)
 * @bug Unimplemented
 */

#ifndef _462_RAYTRACER_HPP_
#define _462_RAYTRACER_HPP_

#include "math/color.hpp"
#include "math/random462.hpp"
#include "application/opengl.hpp"
#include "p3/util.hpp"
namespace _462 {

class Scene;
class Ray;
struct Intersection;
class Raytracer
{
public:
    Raytracer();

    ~Raytracer();

    bool initialize(Scene* scene, size_t num_samples,
                    size_t width, size_t height);

    bool raytrace(unsigned char* buffer, real_t* max_time);

    Color3 trace_pixel(size_t x,
               size_t y,
               size_t width,
               size_t height);

private:
    // the scene to trace
    Scene* scene;
    Projector projector;

    // the dimensions of the image to trace
    size_t width, height;

    // the next row to raytrace
    size_t current_row;

    unsigned int num_samples;

    // Current time it has taken to trace
    double tracetime;
};

} /* _462 */

#endif /* _462_RAYTRACER_HPP_ */
