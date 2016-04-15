/**
 * @file scene.cpp
 * @brief Function definitions for scenes.
 *
 * @author Eric Butler (edbutler)
 * @author Kristin Siu (kasiu)
 * @author Justin Gallagher (jrgallag)
 */

#include "scene/scene.hpp"

namespace _462 {

Geometry::Geometry():
    position(Vector3::Zero()),
    orientation(Quaternion::Identity()),
    scale(Vector3::Ones())
{

}

Geometry::~Geometry() { }


bool Geometry::initialize()
{
    make_inverse_transformation_matrix(&invMat, position, orientation, scale);
    make_transformation_matrix(&mat, position, orientation, scale);
    make_normal_matrix(&normMat, mat);
    return true;
}

SphereLight::SphereLight():
    position(Vector3::Zero()),
    color(Color3::White()),
    radius(real_t(0))
{
    attenuation.constant = 1;
    attenuation.linear = 0;
    attenuation.quadratic = 0;
}

/**
 * @brief Calculates whether this ray intersects the light, and at what time.
 * @param ray: Ray to test.
 * @param t: Where the time to intersection will be returned.
 * @return: bool
 */
bool SphereLight::intersect(const Ray& ray, real_t &t) {
    // Calculate quadratic coefficients
    real_t a = dot(ray.d, ray.d);
    real_t b = 2.0 * dot(ray.d, ray.e - position);
    real_t c = dot(ray.e - position, ray.e - position) - radius * radius;

    // Get t
    t = solve_time(a, b, c);

    return t >= EPS;
}

/**
 * @brief Samples the light to determine its contribution to a point.
 * @param pos: Position of intersection
 * @param wnorm: Surface normal at intersection
 * @param scene: Scene to sample
 * @return: Color of the light, sampled on random points on the light surface
 */
Color3 SphereLight::sample(Vector3 &pos, Vector3 &wnorm, Scene &scene) {
    Color3 cumulative = Color3(0.0, 0.0, 0.0);
    for (int i = 0; i < DIRECT_SAMPLE_COUNT; i++) {
        Vector3 rand_pos = normalize(Vector3(random_gaussian(),
                    random_gaussian(), random_gaussian()));
        rand_pos = rand_pos * radius + position;
        Ray new_ray = Ray(pos, normalize(rand_pos - pos));

        real_t time = length(rand_pos - pos);

        Intersection result = scene.cast_ray(new_ray);

        if (result.time < EPS || time < result.time) {

            real_t atten = 1.0 / (attenuation.constant + time *
                    attenuation.linear + time * time * attenuation.quadratic);
            real_t scale = dot(new_ray.d, wnorm);

            if (scale > 0) {
                cumulative += scale * atten * color *
                    (1.0 / DIRECT_SAMPLE_COUNT);
            }
        }
    }

    return cumulative;
}

Scene::Scene()
{
    reset();
}

Scene::~Scene()
{
    reset();
}

bool Scene::initialize()
{
    bool res = true;
    for (unsigned int i = 0; i < num_geometries(); i++)
        res &= geometries[i]->initialize();
    return res;
}


Geometry* const* Scene::get_geometries() const
{
    return geometries.empty() ? NULL : &geometries[0];
}

size_t Scene::num_geometries() const
{
    return geometries.size();
}

const SphereLight* Scene::get_lights() const
{
    return point_lights.empty() ? NULL : &point_lights[0];
}

size_t Scene::num_lights() const
{
    return point_lights.size();
}

Material* const* Scene::get_materials() const
{
    return materials.empty() ? NULL : &materials[0];
}

size_t Scene::num_materials() const
{
    return materials.size();
}

Mesh* const* Scene::get_meshes() const
{
    return meshes.empty() ? NULL : &meshes[0];
}

size_t Scene::num_meshes() const
{
    return meshes.size();
}

/**
 * @brief Find the color of the point of intersection between a ray and the
 *        scene.
 * @param ray: Ray to send.
 * @param refracti: Refractive index of ray medium.
 * @param depth: Number of recursive calls made.
 * @return: Color of the point of intersection.
 */
Color3 Scene::trace_ray(Ray &ray, int refracti, int depth) {
    // Abort if too deep
    if (depth > MAX_DEPTH) return Color3(0.0, 0.0, 0.0);

    // Use ray casting to find if an object is seen
    Intersection intersect = cast_ray(ray);

    // Calculate color
    if (intersect.time >= EPS) {
        return intersect.shape->color(intersect, ray, *this, depth, refracti);
    } else {
        return background_color;
    }
}

/**
 * @brief Casts a ray through the scene, returning information about the nearest
 *        intersection, if one occurs.
 * @param ray: Ray to cast.
 * @return: Intersection object representing the intersection.
 */
Intersection Scene::cast_ray(Ray &ray) {
    // Use ray casting to find if an object is seen
    Intersection min_inter;
    min_inter.time = -1.0;

    for (unsigned int i = 0; i < num_geometries(); i++) {
        Intersection temp_inter = get_geometries()[i]->intersect(ray);
        if (temp_inter.time >= EPS && (min_inter.time < EPS ||
                temp_inter.time < min_inter.time)) {
            min_inter = temp_inter;
        }
    }

    return min_inter;
}

void Scene::reset()
{
    for ( GeometryList::iterator i = geometries.begin(); i != geometries.end(); ++i ) {
        delete *i;
    }
    for ( MaterialList::iterator i = materials.begin(); i != materials.end(); ++i ) {
        delete *i;
    }
    for ( MeshList::iterator i = meshes.begin(); i != meshes.end(); ++i ) {
        delete *i;
    }

    geometries.clear();
    materials.clear();
    meshes.clear();
    point_lights.clear();

    camera = Camera();

    background_color = Color3::Black();
    ambient_light = Color3::Black();
    refractive_index = 1.0;
}

void Scene::add_geometry( Geometry* g )
{
    geometries.push_back( g );
}

void Scene::add_material( Material* m )
{
    materials.push_back( m );
}

void Scene::add_mesh( Mesh* m )
{
    meshes.push_back( m );
}

void Scene::add_light( const SphereLight& l )
{
    point_lights.push_back( l );
}

/**
 * @brief Calculates the time of intersection for a point with a triangle.
 * @param v0, v1, v2: Vertices of the triangle to intersect.
 * @param rd: Direction of ray.
 * @param re: Starting location of ray.
 * @return: The time of intersection, or -1 if there is no intersection.
 */
real_t tri_intersect(Vector3 v0, Vector3 v1, Vector3 v2, Vector3 rd, Vector3 re,
        real_t &beta, real_t &gamma)
{
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

} /* _462 */

