/**
 * @file simpletriangle.cpp
 * @brief Function definitions for the SimpleTriangle class.
 * @author Justin Gallagher
 */

#include "scene/simpletriangle.hpp"

namespace _462 {

    SimpleTriangle::SimpleTriangle(Vector3 v1, Vector3 v2, Vector3 v3,
            Geometry* parent, int num_tri) {

        vertices[0] = v1;
        vertices[1] = v2;
        vertices[2] = v3;

        this->parent = parent;
        this->num_tri = num_tri;
    }

    SimpleTriangle::~SimpleTriangle() { }

    /**
     * @brief Calculates the time of intersection of a ray with a triangle.
     * @param ray: Ray to intersect.
     * @param beta, gamma: Reference to store trilinear coordinates of
     *      intersection point.
     * @return: The time of intersection, or -1 if there is no intersection.
     */
    real_t SimpleTriangle::intersect(Ray &ray, real_t &beta, real_t &gamma) {

        Vector3 v0 = vertices[0];
        Vector3 v1 = vertices[1];
        Vector3 v2 = vertices[2];

        Vector3 rd = ray.d;
        Vector3 re = ray.e;

        // Compute t
        real_t a = v0.x - v1.x;
        real_t b = v0.y - v1.y;
        real_t c = v0.z - v1.z;
        real_t d = v0.x - v2.x;
        real_t e = v0.y - v2.y;
        real_t f = v0.z - v2.z;
        real_t g = rd.x;
        real_t h = rd.y;
        real_t i = rd.z;
        real_t j = v0.x - re.x;
        real_t k = v0.y - re.y;
        real_t l = v0.z - re.z;

        real_t m = a*(e*i-h*f) + b*(g*f-d*i) + c*(d*h-e*g);

        if (fabs(m) == 0.0) {
            return -1.0;
        }

        real_t t = (f*(a*k-j*b) + e*(j*c-a*l) + d*(b*l-k*c)) * -1.0/m;

        if (t < EPS) {
            return -1.0;
        }

        // Compute gamma
        gamma = (i*(a*k-j*b) + h*(j*c-a*l) + g*(b*l-k*c)) / m;

        if (gamma < 0 || gamma > 1) {
            return -1.0;
        }

        // Compute beta
        beta = (j*(e*i-h*f) + k*(g*f-d*i) + l*(d*h-e*g)) / m;

        if (beta < 0 || beta > 1 - gamma) {
            return -1.0;
        }

        return t;
    }

}
