/**
 * @file model.hpp
 * @brief Model class
 *
 * @author Eric Butler (edbutler)
 * @author Justin Gallagher (jrgallag)
 */

#ifndef _462_SCENE_MODEL_HPP_
#define _462_SCENE_MODEL_HPP_

#include "scene/scene.hpp"
#include "scene/mesh.hpp"
#include "scene/meshtree.hpp"
#include "p3/util.hpp"

namespace _462 {

/**
 * A mesh of triangles.
 */
class Model : public Geometry
{
public:

    const Mesh* mesh;
    const MeshTree *tree;
    const Material* material;

    Model();
    virtual ~Model();

    virtual void render() const;
    Intersection intersect(Ray &ray);
    Color3 color(Intersection intersect, Ray &ray, Scene &scene, int depth,
            int refractive_index);
    virtual bool initialize();
};


} /* _462 */

#endif /* _462_SCENE_MODEL_HPP_ */

