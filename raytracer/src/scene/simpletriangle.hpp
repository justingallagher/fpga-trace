/**
 * @file simpletriangle.hpp
 * @brief Class definition for a simple triangle, used for intersections.
 * @author Justin Gallagher (jrgallag)
 */

#ifndef _SCENE_SIMPLETRIANGLE_HPP_
#define _SCENE_SIMPLETRIANGLE_HPP_

#include "math/vector.hpp"
#include "scene/ray.hpp"

namespace _462 {

class Geometry;

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

    private:
        // Points of each vertex, in absolute coordinates
        Vector3 vertices[3];
};

}

#endif /* _462_SIMPLETRIANGLE_HPP_ */
