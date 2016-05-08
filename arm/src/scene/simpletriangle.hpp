/**
 * @file simpletriangle.hpp
 * @brief Class definition for a simple triangle, used for intersections.
 * @author Justin Gallagher (jrgallag)
 */

#ifndef _SCENE_SIMPLETRIANGLE_HPP_
#define _SCENE_SIMPLETRIANGLE_HPP_

#include "axidma/tracer_axidma.hpp"
#include "math/vector.hpp"
#include "scene/ray.hpp"
#include <arm_neon.h>

// width of ARM NEON SIMD registers, in bytes.
#define SIMD_WIDTH 16

namespace _462 {

class Geometry;

//represents an intersection between a ray and geometry
struct Intersection {
    real_t time;        // Time that the ray intersected with the shape
    Geometry* shape;    // Shape that the ray intersected with
    unsigned int tri;   // Triangle that the ray intersected with (model only)
    real_t x;           // Longitude/beta for spheres/triangles
    real_t y;           // Latitude/gamma for spheres/triangles
};

typedef struct Intersection Intersection;

/* @brief Basic triangle used for common intersection tests. */
class SimpleTriangle {

    public:
        SimpleTriangle(Vector3 v1, Vector3 v2, Vector3 v3, Geometry* parent,
                int num_tri);
        virtual ~SimpleTriangle();

        real_t intersect(Ray &ray, real_t &beta, real_t &gamma);

        // Geometry figure that contains this triangle
        Geometry* parent;

        // The index of the triangle in a mesh; do not use if parent is not
        // a mesh.
        int num_tri;

        static Intersection simd_intersect(std::vector<SimpleTriangle*>
                &tris, Ray &ray);

        static Intersection fpga_intersect(std::vector<SimpleTriangle*> &tris,
                Ray &ray, AxiDma* interface);

        // Points of each vertex, in absolute coordinates
        Vector3 vertices[3];
};

}

#endif /* _462_SIMPLETRIANGLE_HPP_ */
