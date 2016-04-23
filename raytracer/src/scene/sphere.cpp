/**
 * @file sphere.cpp
 * @brief Function defnitions for the Sphere class.
 *
 * @author Kristin Siu (kasiu)
 * @author Eric Butler (edbutler)
 * @author Justin Gallagher (jrgallag)
 */

#include "scene/sphere.hpp"
#include "application/opengl.hpp"
#include <algorithm>

namespace _462 {

#define SPHERE_NUM_LAT 80
#define SPHERE_NUM_LON 100

#define SPHERE_NUM_VERTICES ( ( SPHERE_NUM_LAT + 1 ) * ( SPHERE_NUM_LON + 1 ) )
#define SPHERE_NUM_INDICES ( 6 * SPHERE_NUM_LAT * SPHERE_NUM_LON )
// index of the x,y sphere where x is lat and y is lon
#define SINDEX(x,y) ((x) * (SPHERE_NUM_LON + 1) + (y))
#define VERTEX_SIZE 8
#define TCOORD_OFFSET 0
#define NORMAL_OFFSET 2
#define VERTEX_OFFSET 5
#define BUMP_FACTOR 1

static unsigned int Indices[SPHERE_NUM_INDICES];
static float Vertices[VERTEX_SIZE * SPHERE_NUM_VERTICES];

static void init_sphere()
{
    static bool initialized = false;
    if ( initialized )
        return;

    for ( int i = 0; i <= SPHERE_NUM_LAT; i++ ) {
        for ( int j = 0; j <= SPHERE_NUM_LON; j++ ) {
            real_t lat = real_t( i ) / SPHERE_NUM_LAT;
            real_t lon = real_t( j ) / SPHERE_NUM_LON;
            float* vptr = &Vertices[VERTEX_SIZE * SINDEX(i,j)];

            vptr[TCOORD_OFFSET + 0] = lon;
            vptr[TCOORD_OFFSET + 1] = 1-lat;

            lat *= PI;
            lon *= 2 * PI;
            real_t sinlat = sin( lat );

            vptr[NORMAL_OFFSET + 0] = vptr[VERTEX_OFFSET + 0] = sinlat * sin( lon );
            vptr[NORMAL_OFFSET + 1] = vptr[VERTEX_OFFSET + 1] = cos( lat ),
            vptr[NORMAL_OFFSET + 2] = vptr[VERTEX_OFFSET + 2] = sinlat * cos( lon );
        }
    }

    for ( int i = 0; i < SPHERE_NUM_LAT; i++ ) {
        for ( int j = 0; j < SPHERE_NUM_LON; j++ ) {
            unsigned int* iptr = &Indices[6 * ( SPHERE_NUM_LON * i + j )];

            unsigned int i00 = SINDEX(i,  j  );
            unsigned int i10 = SINDEX(i+1,j  );
            unsigned int i11 = SINDEX(i+1,j+1);
            unsigned int i01 = SINDEX(i,  j+1);

            iptr[0] = i00;
            iptr[1] = i10;
            iptr[2] = i11;
            iptr[3] = i11;
            iptr[4] = i01;
            iptr[5] = i00;
        }
    }

    initialized = true;
}

Sphere::Sphere()
    : radius(0), material(0) {}

Sphere::~Sphere() {}

/**
 * @brief Returns this object as a simple triangle.
 */
std::vector< SimpleTriangle* > Sphere::get_triangles() {
    std::vector< SimpleTriangle* > mytris;

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
Color3 Sphere::color(Intersection intersect, Ray &ray, Scene &scene, int depth,
        int refractive_index) {

    // Sample texture color
    Color3 tc = material->texture.get_texture_coord(intersect.x, intersect.y);

    // Find normal
    Vector3 position = ray.atTime(intersect.time);
    Vector3 localnorm = (invMat * Vector4(position, 1.0)).xyz();
    Vector3 worldnorm = normalize(normMat * localnorm);


    if (material->refractive_index == 0) {
        // Opaque material

        // Find ambient color
        Color3 ac = material->ambient * scene.ambient_light;

        // Find normal
        Vector3 position = ray.atTime(intersect.time);
        Vector3 localnorm = (invMat * Vector4(position, 1.0)).xyz();
        Vector3 worldnorm = normalize(normMat * localnorm);

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

void Sphere::render() const
{
    // create geometry if we haven't already
    init_sphere();

    if ( material )
        material->set_gl_state();

    // just scale by radius and draw unit sphere
    glPushMatrix();
    glScaled( radius, radius, radius );
    glInterleavedArrays( GL_T2F_N3F_V3F, VERTEX_SIZE * sizeof Vertices[0], Vertices );
    glDrawElements( GL_TRIANGLES, SPHERE_NUM_INDICES, GL_UNSIGNED_INT, Indices );
    glPopMatrix();

    if ( material )
        material->reset_gl_state();
}

//quadratic formula
//If a solution exists, returns answers in x1 and x2, and returns true.
//Otherwise, returns false
bool solve_quadratic(real_t *x1,real_t *x2, real_t a, real_t b, real_t c){
    real_t b24ac = b*b-4*a*c;
    if(b24ac<0){
        return false;
    }else{
        real_t sb24ac=sqrt(b24ac);
        *x1=(-b+sb24ac)/(2*a);
        *x2=(-b-sb24ac)/(2*a);
        return true;
    }
}
//solve a quadratic equation, and then return the smallest solution larger than EPS
//if there is no solution, return -1
real_t solve_time(real_t a,real_t b,real_t c){
    real_t x1;
    real_t x2;
    if(solve_quadratic(&x1,&x2,a,b,c)){
        if(x1>EPS && x2>EPS){
            return std::min(x1,x2);
        }else if(x1>EPS){
            return x1;
        }else if(x2>EPS){
            return x2;
        }
    }
    return -1;
}
} /* _462 */

