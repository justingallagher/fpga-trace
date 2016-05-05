/**
 * @file triangle.cpp
 * @brief Function definitions for the Triangle class.
 *
 * @author Eric Butler (edbutler)
 * @author Justin Gallagher (jrgallag)
 */

#include "scene/triangle.hpp"
#include "application/opengl.hpp"
#include "math/math.hpp"

namespace _462 {

Triangle::Triangle()
{
    vertices[0].material = 0;
    vertices[1].material = 0;
    vertices[2].material = 0;
    isBig=true;
}

Triangle::~Triangle() { }

/**
 * @brief Returns this object as a simple triangle.
 */
std::vector< SimpleTriangle* > Triangle::get_triangles() {
    std::vector< SimpleTriangle* > mytris;

    Vector3 v1 = (mat * Vector4(vertices[0].position, 1.0)).xyz();
    Vector3 v2 = (mat * Vector4(vertices[1].position, 1.0)).xyz();
    Vector3 v3 = (mat * Vector4(vertices[2].position, 1.0)).xyz();

    mytris.push_back(new SimpleTriangle(v1, v2, v3, this, -1));

    return mytris;
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
Color3 Triangle::color(Intersection intersect, Ray &ray, Scene &scene,
        int depth, int refractive_index) {

    // Calculate barycentric coordinates
    real_t alpha = 1 - intersect.x - intersect.y;
    real_t beta = intersect.x;
    real_t gamma = intersect.y;

    // Find texture coordinate
    Vector2 tex_coord = alpha * vertices[0].tex_coord + beta *
        vertices[1].tex_coord + gamma * vertices[2].tex_coord;

    // Sample and interpolate texture colors
    Color3 tcolor0 = vertices[0].material->
        texture.get_texture_coord(tex_coord.x, tex_coord.y);
    Color3 tcolor1 = vertices[1].material->
        texture.get_texture_coord(tex_coord.x, tex_coord.y);
    Color3 tcolor2 = vertices[2].material->
        texture.get_texture_coord(tex_coord.x, tex_coord.y);
    Color3 tc = alpha * tcolor0 + beta * tcolor1 + gamma * tcolor2;

    // Find position and normal
    Vector3 position = ray.atTime(intersect.time);
    Vector3 localnorm = alpha * vertices[0].normal + beta * vertices[1].normal +
        gamma * vertices[2].normal;
    Vector3 worldnorm = normalize(normMat * localnorm);

    // Find specular color
    Color3 sc = Color3(0.0, 0.0, 0.0);
    Color3 specular = alpha * vertices[0].material->specular +
                      beta * vertices[1].material->specular +
                      gamma * vertices[2].material->specular;
    real_t refracti = alpha * vertices[0].material->refractive_index +
                      beta * vertices[1].material->refractive_index +
                      gamma * vertices[2].material->refractive_index;

    if (refracti == 0) {
        // Opaque object

        // Find ambient color
        Color3 ac = scene.ambient_light * (alpha * vertices[0].material->ambient +
                beta * vertices[1].material->ambient + gamma *
                vertices[2].material->ambient);

        // Find diffuse component
        Color3 diffuse = alpha * vertices[0].material->diffuse
                         + beta * vertices[1].material->diffuse
                         + gamma * vertices[2].material->diffuse;

        // Find diffuse color
        Color3 diffuse_light = Color3(0.0, 0.0, 0.0);
        for (size_t i = 0; i < scene.num_lights(); i++) {
            SphereLight light = scene.get_lights()[i];
            diffuse_light += light.sample(position, worldnorm, scene);
        }
        Color3 dc = diffuse_light * diffuse;

        // Do reflection
        if (specular != Color3(0.0, 0.0, 0.0)) {
            Ray new_ray = Ray(position, reflect(worldnorm, ray.d));

            sc += specular * scene.trace_ray(new_ray, refractive_index,
                    depth + 1);
        }

        return tc * (ac + dc + sc);
    } else {
        // Get refractive ratio and angle
        real_t refractratio, theta;
        if (refractive_index == refracti) {
            // Leaving material
            refractratio = refractive_index / scene.refractive_index;
            theta = acos(dot(ray.d, worldnorm));
            worldnorm *= -1.0;
        } else {
            // Entering material
            refractratio = refractive_index / refracti;
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

        sc += specular * scene.trace_ray(new_ray,
                1 / (refractratio / refractive_index), depth + 1);

        return tc * sc;
    }
}

void Triangle::render() const
{
    bool materials_nonnull = true;
    for ( int i = 0; i < 3; ++i )
        materials_nonnull = materials_nonnull && vertices[i].material;

    // this doesn't interpolate materials. Ah well.
    if ( materials_nonnull )
        vertices[0].material->set_gl_state();

    glBegin(GL_TRIANGLES);

#if REAL_FLOAT
    glNormal3fv( &vertices[0].normal.x );
    glTexCoord2fv( &vertices[0].tex_coord.x );
    glVertex3fv( &vertices[0].position.x );

    glNormal3fv( &vertices[1].normal.x );
    glTexCoord2fv( &vertices[1].tex_coord.x );
    glVertex3fv( &vertices[1].position.x);

    glNormal3fv( &vertices[2].normal.x );
    glTexCoord2fv( &vertices[2].tex_coord.x );
    glVertex3fv( &vertices[2].position.x);
#else
    glNormal3dv( &vertices[0].normal.x );
    glTexCoord2dv( &vertices[0].tex_coord.x );
    glVertex3dv( &vertices[0].position.x );

    glNormal3dv( &vertices[1].normal.x );
    glTexCoord2dv( &vertices[1].tex_coord.x );
    glVertex3dv( &vertices[1].position.x);

    glNormal3dv( &vertices[2].normal.x );
    glTexCoord2dv( &vertices[2].tex_coord.x );
    glVertex3dv( &vertices[2].position.x);
#endif

    glEnd();

    if ( materials_nonnull )
        vertices[0].material->reset_gl_state();
}
} /* _462 */
