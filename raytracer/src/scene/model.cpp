/**
 * @file model.cpp
 * @brief Model class
 *
 * @author Eric Butler (edbutler)
 * @author Zeyang Li (zeyangl)
 * @author Justin Gallagher (jrgallag)
 */

#include "scene/model.hpp"
#include "scene/material.hpp"
#include "application/opengl.hpp"
#include "scene/triangle.hpp"
#include <iostream>
#include <cstring>
#include <string>
#include <fstream>

namespace _462 {

Model::Model() : mesh( 0 ), material( 0 ) { }
Model::~Model() { }

/**
 * @brief Calculates time that a ray intersects with the shape
 * @param ray: Ray to calculate for
 * @return: Object representing the intersection, or null if there is no
 *        intersection.
 */
Intersection Model::intersect(Ray &ray) {

    // Transform ray to local space
    Vector3 locale = (invMat * Vector4(ray.e, 1.0)).xyz();
    Vector3 locald = (invMat * Vector4(ray.d, 0.0)).xyz();

    // Find minimum intersection t for component triangles
    real_t min_t = -1.0;
    real_t beta;
    real_t gamma;
    unsigned int tri_num;

    for (unsigned int i = 0; i < mesh->num_triangles(); i++) {
        MeshTriangle tri = mesh->get_triangles()[i];

        Vector3 tv0 = mesh->get_vertices()[tri.vertices[0]].position;
        Vector3 tv1 = mesh->get_vertices()[tri.vertices[1]].position;
        Vector3 tv2 = mesh->get_vertices()[tri.vertices[2]].position;

        real_t tempBeta, tempGamma;
        real_t t = tri_intersect(tv0, tv1, tv2, locald, locale, tempBeta,
                tempGamma);

        if (t >= EPS && (min_t < EPS || t < min_t)) {
            min_t = t;
            beta = tempBeta;
            gamma = tempGamma;
            tri_num = i;
        }
    }

    Intersection intersect;
    intersect.time = min_t;
    intersect.shape = this;
    intersect.tri = tri_num;
    intersect.x = beta;
    intersect.y = gamma;

    return intersect;
}

/**
 * @brief Calculates the color of the object at the given ray intersection
 * @param intersect: Intersection with a ray returned by intersect
 * @param ray: Ray used to intersect the object
 * @param scene: Scene to use
 * @param depth: Recursion depth
 * @param refractive_index: Refractive index of ray medium
 * @return: Color of the object at the given intersection
 */
Color3 Model::color(Intersection intersect, Ray &ray, Scene &scene, int depth,
        int refractive_index) {

    // Calculate barycentric coordinates
    real_t alpha = 1 - intersect.x - intersect.y;
    real_t beta = intersect.x;
    real_t gamma = intersect.y;

    // Get vertices
    MeshTriangle tri = mesh->get_triangles()[intersect.tri];
    MeshVertex v0 = mesh->get_vertices()[tri.vertices[0]];
    MeshVertex v1 = mesh->get_vertices()[tri.vertices[1]];
    MeshVertex v2 = mesh->get_vertices()[tri.vertices[2]];

    // Sample texture
    Vector2 tex_coord = alpha * v0.tex_coord + beta * v1.tex_coord +
        gamma * v2.tex_coord;
    Color3 tc = material->texture.get_texture_coord(tex_coord.x, tex_coord.y);

    // Find position and normal
    Vector3 position = ray.atTime(intersect.time);
    Vector3 localnorm = alpha * v0.normal + beta * v1.normal +
        gamma * v2.normal;
    Vector3 worldnorm = normalize(normMat * localnorm);


    if (material->refractive_index == 0) {
        // Opaque material

        // Find ambient color
        Color3 ac = material->ambient * scene.ambient_light;

        // Find diffuse color
        Color3 diffuse_light = Color3(0.0, 0.0, 0.0);
        for (size_t i = 0; i < scene.num_lights(); i++) {
            SphereLight light = scene.get_lights()[i];
            diffuse_light += light.sample(position, worldnorm, scene);
        }
        Color3 dc = diffuse_light * material->diffuse;

        // Find specular color
        Color3 sc = Color3(0.0, 0.0, 0.0);

        if (material->specular != Color3(0.0, 0.0, 0.0)) {
            Ray new_ray = Ray(position, reflect(worldnorm, ray.d));

            sc += material->specular * scene.trace_ray(new_ray,
                    refractive_index, depth + 1);
        }

        return tc * (ac + dc + sc);
    } else {
        // Transparent material

        // Find specular color
        Color3 sc = Color3(0.0, 0.0, 0.0);

        // Get refractive ratio and angle
        real_t refractratio, theta;
        if (refractive_index == material->refractive_index) {
            // Leaving material
            refractratio = refractive_index / scene.refractive_index;
            theta = acos(dot(ray.d, worldnorm));
            worldnorm *= -1.0;
        } else {
            // Entering material
            refractratio = refractive_index / material->refractive_index;
            theta = acos(dot(ray.d, -1.0 * worldnorm));
        }

        // Get refracted vector
        Vector3 refract_dir;

        Ray new_ray;
        if (refract(worldnorm, ray.d, refractratio, &refract_dir) &&
                random_uniform() > schlick(theta,
                refractratio / refractive_index)) {
            new_ray = Ray(position, refract_dir);
        } else {
            new_ray = Ray(position, reflect(worldnorm, ray.d));
        }

        sc += material->specular * scene.trace_ray(new_ray,
                1 / (refractratio / refractive_index), depth + 1);

        return tc * sc;
    }
}

void Model::render() const
{
    if ( !mesh )
        return;
    if ( material )
        material->set_gl_state();
    mesh->render();
    if ( material )
        material->reset_gl_state();
}
bool Model::initialize(){
    Geometry::initialize();
    return true;
}

} /* _462 */
