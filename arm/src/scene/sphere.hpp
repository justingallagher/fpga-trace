/**
 * @file sphere.hpp
 * @brief Class defnition for Sphere.
 *
 * @author Kristin Siu (kasiu)
 * @author Eric Butler (edbutler)
 * @author Justin Gallagher (jrgallag)
 */

#ifndef _462_SCENE_SPHERE_HPP_
#define _462_SCENE_SPHERE_HPP_

#include "scene/scene.hpp"
#include "p3/util.hpp"

namespace _462 {

/**
 * A sphere, centered on its position with a certain radius.
 */
class Sphere : public Geometry
{
public:

    real_t radius;
    const Material* material;

    Sphere();
    virtual ~Sphere();
    Color3 color(Intersection intersect, Ray &ray, Scene &scene, int depth,
            int refractive_index);
    virtual void render() const;

    virtual std::vector< SimpleTriangle* > get_triangles();
};

real_t solve_time(real_t a, real_t b, real_t c);

} /* _462 */

#endif /* _462_SCENE_SPHERE_HPP_ */

