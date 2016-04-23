/**
 * @file scene.hpp
 * @brief Class definitions for scenes.
 *
 * @author Justin Gallagher (jrgallag)
 */

#ifndef _462_SCENE_SCENE_HPP_
#define _462_SCENE_SCENE_HPP_

#include <string>
#include <vector>
#include <cfloat>

#include "p3/util.hpp"
#include "math/vector.hpp"
#include "math/quaternion.hpp"
#include "math/matrix.hpp"
#include "math/camera.hpp"
#include "math/random462.hpp"
#include "scene/bound.hpp"
#include "scene/material.hpp"
#include "scene/mesh.hpp"
#include "scene/ray.hpp"
#include "scene/simpletriangle.hpp"

namespace _462 {
class Geometry;
class Scene;

//represents an intersection between a ray and geometry
struct Intersection {
    real_t time;        // Time that the ray intersected with the shape
    Geometry* shape;    // Shape that the ray intersected with
    unsigned int tri;   // Triangle that the ray intersected with (model only)
    real_t x;           // Longitude/beta for spheres/triangles
    real_t y;           // Latitude/gamma for spheres/triangles
};

typedef struct Intersection Intersection;

real_t solve_time(real_t a, real_t b, real_t c);

class Geometry
{
public:
    Geometry();
    virtual ~Geometry();
    /*
       World transformation are applied in the following order:
       1. Scale
       2. Orientation
       3. Position
    */

    // The world position of the object.
    Vector3 position;

    // The world orientation of the object.
    // Use Quaternion::to_matrix to get the rotation matrix.
    Quaternion orientation;

    // The world scale of the object.
    Vector3 scale;

    // Forward transformation matrix
    Matrix4 mat;

    // Inverse transformation matrix
    Matrix4 invMat;
    // Normal transformation matrix
    Matrix3 normMat;
    bool isBig;

    /**
     * Returns color at the given intersection
     */
    virtual Color3 color(Intersection intersect, Ray &ray, Scene &scene,
            int depth, int refractive_index) = 0;

    /**
     * Renders this geometry using OpenGL in the local coordinate space.
     */
    virtual void render() const = 0;

    virtual std::vector< SimpleTriangle* > get_triangles() = 0;

    virtual bool initialize();
};


struct SphereLight
{
    struct Attenuation
    {
        real_t constant;
        real_t linear;
        real_t quadratic;
    };

    SphereLight();

    bool intersect(const Ray& r, real_t& t);

    Color3 sample(Vector3 &position, Vector3 &norm, Scene &scene);

    // The position of the light, relative to world origin.
    Vector3 position;
    // The color of the light (both diffuse and specular)
    Color3 color;
    // attenuation
    Attenuation attenuation;
    real_t radius;
};

/**
 * The container class for information used to render a scene composed of
 * Geometries.
 */
class Scene
{
public:

    /// the camera
    Camera camera;
    /// the background color
    Color3 background_color;
    /// the amibient light of the scene
    Color3 ambient_light;
    /// the refraction index of air
    real_t refractive_index;

    /// Creates a new empty scene.
    Scene();

    /// Destroys this scene. Invokes delete on everything in geometries.
    ~Scene();

    bool initialize();

    // accessor functions
    Geometry* const* get_geometries() const;
    size_t num_geometries() const;
    const SphereLight* get_lights() const;
    size_t num_lights() const;
    Material* const* get_materials() const;
    size_t num_materials() const;
    Mesh* const* get_meshes() const;
    size_t num_meshes() const;

    Color3 trace_ray(Ray &ray, int refractive_index, int depth);

    // Cast ray through the scene
    Intersection cast_ray(Ray &ray);

    /// Clears the scene, and invokes delete on everything in geometries.
    void reset();

    // functions to add things to the scene
    // all pointers are deleted by the scene upon scene deconstruction.
    void add_geometry( Geometry* g );
    void add_material( Material* m );
    void add_mesh( Mesh* m );
    void add_light( const SphereLight& l );

private:

    typedef std::vector< SphereLight > SphereLightList;
    typedef std::vector< Material* > MaterialList;
    typedef std::vector< Mesh* > MeshList;
    typedef std::vector< Geometry* > GeometryList;
    typedef std::vector< SimpleTriangle* > TriangleList;

    // list of all lights in the scene
    SphereLightList point_lights;
    // all materials used by geometries
    MaterialList materials;
    // all meshes used by models
    MeshList meshes;
    // list of all geometries. deleted in dctor, so should be allocated on heap.
    GeometryList geometries;
    // list of all triangles and their associated geometries.
    TriangleList triangles;

private:

    // no meaningful assignment or copy
    Scene(const Scene&);
    Scene& operator=(const Scene&);

};

} /* _462 */

#endif /* _462_SCENE_SCENE_HPP_ */
