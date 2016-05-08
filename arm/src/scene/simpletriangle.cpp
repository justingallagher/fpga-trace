/**
 * @file simpletriangle.cpp
 * @brief Function definitions for the SimpleTriangle class.
 * @author Justin Gallagher
 */

#include "scene/simpletriangle.hpp"
#include <limits>

namespace _462 {

    const size_t WIDTH = SIMD_WIDTH / sizeof(float);

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

    /**
     * @brief Helper function for simd_intersect.
     * @param a, b, c, d, e: Vector arguments
     * @return a*(b*c-d*e)
     */
    static inline float32x4_t mult_diff(float32x4_t a, float32x4_t b,
            float32x4_t c, float32x4_t d, float32x4_t e) {

        return vmulq_f32(a, vsubq_f32(vmulq_f32(b, c), vmulq_f32(d, e)));
    }

    /**
     * @brief Estimate the reciprocal of a SIMD vector.
     *        Source: https://stackoverflow.com/questions/6759897
     * @param x Vector to invert.
     * @return The vector representing the reciprocal of x.
     */
    static inline float32x4_t reciprocal(float32x4_t x) {

        const int NUM_REFINEMENTS = 2;

        float32x4_t reciprocal = vrecpeq_f32(x);

        for (int i = 0; i < NUM_REFINEMENTS; i++)
            reciprocal = vmulq_f32(vrecpsq_f32(x, reciprocal), reciprocal);

        return reciprocal;
    }

    static inline void print_simd(std::string name, float32x4_t x) {
        float temp[WIDTH];

        vst1q_f32(temp, x);

        std::cout << name << ": (";
        for (size_t i = 0; i < WIDTH; i++) {
            std::cout << temp[i] << ", ";
        }
        std::cout << ")" << std::endl;
    }

    /**
     * @brief Performs the intersection of many triangles with a ray using SIMD.
     * @param tris: List of triangles to test.
     * @param ray: Ray to test.
     * @return Best intersection.
     */
    Intersection SimpleTriangle::simd_intersect(
            std::vector<SimpleTriangle*> &tris, Ray &ray) {


        // Tracks the closest intersection we've found so far
        Intersection result;
        result.time = std::numeric_limits<float>::infinity();

        // Loop in intervals of SIMD_WIDTH
        for (size_t x = 0; x < tris.size(); x += WIDTH) {

            //=================================================================
            // STEP 1: LOAD DATA INTO SIMD REGISTERS
            //=================================================================

            float tempv0x[WIDTH], tempv0y[WIDTH], tempv0z[WIDTH];
            float tempv1x[WIDTH], tempv1y[WIDTH], tempv1z[WIDTH];
            float tempv2x[WIDTH], tempv2y[WIDTH], tempv2z[WIDTH];

            // Vectors for vertex coordinates
            float32x4_t v0x, v0y, v0z;
            float32x4_t v1x, v1y, v1z;
            float32x4_t v2x, v2y, v2z;

            for (size_t y = 0; y < WIDTH && x + y < tris.size(); y++) {
                SimpleTriangle* cur = tris[x + y];

                tempv0x[y] = cur->vertices[0].x;
                tempv0y[y] = cur->vertices[0].y;
                tempv0z[y] = cur->vertices[0].z;

                tempv1x[y] = cur->vertices[1].x;
                tempv1y[y] = cur->vertices[1].y;
                tempv1z[y] = cur->vertices[1].z;

                tempv2x[y] = cur->vertices[2].x;
                tempv2y[y] = cur->vertices[2].y;
                tempv2z[y] = cur->vertices[2].z;
            }

            v0x = vld1q_f32(tempv0x);
            v0y = vld1q_f32(tempv0y);
            v0z = vld1q_f32(tempv0z);

            v1x = vld1q_f32(tempv1x);
            v1y = vld1q_f32(tempv1y);
            v1z = vld1q_f32(tempv1z);

            v2x = vld1q_f32(tempv2x);
            v2y = vld1q_f32(tempv2y);
            v2z = vld1q_f32(tempv2z);

            // Vectors for ray coordinates
            float32x4_t rdx, rdy, rdz;
            float32x4_t rex, rey, rez;

            rdx = vdupq_n_f32(ray.d.x);
            rdy = vdupq_n_f32(ray.d.y);
            rdz = vdupq_n_f32(ray.d.z);
            rex = vdupq_n_f32(ray.e.x);
            rey = vdupq_n_f32(ray.e.y);
            rez = vdupq_n_f32(ray.e.z);

            //=================================================================
            // STEP 2: CALCULATE RAY INTERSECTION TIME
            //=================================================================

            float32x4_t a = vsubq_f32(v0x, v1x);
            float32x4_t b = vsubq_f32(v0y, v1y);
            float32x4_t c = vsubq_f32(v0z, v1z);
            float32x4_t d = vsubq_f32(v0x, v2x);
            float32x4_t e = vsubq_f32(v0y, v2y);
            float32x4_t f = vsubq_f32(v0z, v2z);
            float32x4_t g = rdx;
            float32x4_t h = rdy;
            float32x4_t i = rdz;
            float32x4_t j = vsubq_f32(v0x, rex);
            float32x4_t k = vsubq_f32(v0y, rey);
            float32x4_t l = vsubq_f32(v0z, rez);

            // m = a*(e*i-h*f) + b*(g*f-d*i) + c*(d*h-e*g);
            float32x4_t m1 = mult_diff(a, e, i, h, f);
            float32x4_t m2 = mult_diff(b, g, f, d, i);
            float32x4_t m3 = mult_diff(c, d, h, e, g);
            float32x4_t m = vaddq_f32(m1, vaddq_f32(m2, m3));

            // im = 1/m;
            float32x4_t im = reciprocal(m);

            // t = (f*(a*k-j*b) + e*(j*c-a*l) + d*(b*l-k*c)) * -1.0/m;
            float32x4_t t1 = mult_diff(f, a, k, f, b);
            float32x4_t t2 = mult_diff(e, j, c, a, l);
            float32x4_t t3 = mult_diff(d, b, l, k, c);
            float32x4_t t = vaddq_f32(t1, vaddq_f32(t2, t3));
            t = vmulq_f32(vnegq_f32(t), im);

            //=================================================================
            // STEP 3: CALCULATE INTERSECTION TRILINEAR COORDINATES
            //=================================================================

            // gamma = (i*(a*k-j*b) + h*(j*c-a*l) + g*(b*l-k*c)) / m;
            float32x4_t gamma1 = mult_diff(i, a, k, j, b);
            float32x4_t gamma2 = mult_diff(h, j, c, a, l);
            float32x4_t gamma3 = mult_diff(g, b, l, k, c);
            float32x4_t gamma = vaddq_f32(gamma1, vaddq_f32(gamma2, gamma3));
            gamma = vmulq_f32(gamma, im);

            // beta = (j*(e*i-h*f) + k*(g*f-d*i) + l*(d*h-e*g)) / m;
            float32x4_t beta1 = mult_diff(j, e, i, h, f);
            float32x4_t beta2 = mult_diff(k, g, f, d, i);
            float32x4_t beta3 = mult_diff(l, d, h, e, g);
            float32x4_t beta = vaddq_f32(beta1, vaddq_f32(beta2, beta3));
            beta = vmulq_f32(beta, im);

            //=================================================================
            // STEP 4: EXAMINE RESULTS
            //=================================================================

            float tresult[WIDTH];
            float gammaresult[WIDTH];
            float betaresult[WIDTH];

            vst1q_f32(tresult, t);
            vst1q_f32(gammaresult, gamma);
            vst1q_f32(betaresult, beta);

            for (size_t y = 0; y < WIDTH && x + y < tris.size(); y++) {
                if (EPS < tresult[y] && tresult[y] < result.time &&
                        0.0 <= gammaresult[y] && gammaresult[y] <= 1.0 &&
                        0.0 <= betaresult[y] &&
                        betaresult[y] <= 1.0 - gammaresult[y]) {
                    result.time = tresult[y];
                    result.shape = tris[x + y]->parent;
                    result.tri = tris[x + y]->num_tri;
                    result.x = betaresult[y];
                    result.y = gammaresult[y];
                }
            }
        }

        if (result.time == std::numeric_limits<float>::infinity())
            result.time = -1.0;

        return result;
    }

    /**
     * @brief Performs the intersection of many triangles with a ray using SIMD.
     * @param tris: List of triangles to test.
     * @param ray: Ray to test.
     * @return Best intersection.
     */
    Intersection SimpleTriangle::fpga_intersect(std::vector<SimpleTriangle*>
            &tris, Ray &ray, AxiDma* interface) {

        Intersection result;
        result.time = std::numeric_limits<float>::infinity();

        float* transmit_buffer = (float*) interface->tx_buf;
        float* receive_buffer = (float*) interface->rx_buf;
        size_t tx_size = interface->tx_size / sizeof(float);
        size_t rx_size = interface->rx_size / sizeof(float);
        size_t tris_per_transfer = tx_size / 15;

        // Loop in intervals of tx_size
        for (size_t i = 0; i < tris.size(); i += tris_per_transfer) {

            for (size_t j = 0; i + j < tris.size() && j < tris_per_transfer;
                    j++) {
                SimpleTriangle* cur = tris[i + j];

                size_t txi = j * 15;

                // Copy data into the transmit buffer
                transmit_buffer[txi] = cur->vertices[0].x;
                transmit_buffer[txi + 1] = cur->vertices[0].y;
                transmit_buffer[txi + 2] = cur->vertices[0].z;

                transmit_buffer[txi + 3] = cur->vertices[1].x;
                transmit_buffer[txi + 4] = cur->vertices[1].y;
                transmit_buffer[txi + 5] = cur->vertices[1].z;

                transmit_buffer[txi + 6] = cur->vertices[2].x;
                transmit_buffer[txi + 7] = cur->vertices[2].y;
                transmit_buffer[txi + 8] = cur->vertices[2].z;

                transmit_buffer[txi + 9] = ray.d.x;
                transmit_buffer[txi + 10] = ray.d.y;
                transmit_buffer[txi + 11] = ray.d.z;

                transmit_buffer[txi + 12] = ray.e.x;
                transmit_buffer[txi + 13] = ray.e.y;
                transmit_buffer[txi + 14] = ray.e.z;
            }

            // Send data to the FPGA
            interface->transfer();

            // Examine results
            for (size_t j = 0; i + j < tris.size() && j < tris_per_transfer;
                    j++) {
                size_t rxi = j * 3;

                float t = receive_buffer[rxi];
                float gamma = receive_buffer[rxi + 1];
                float beta = receive_buffer[rxi + 2];

                if (EPS < t && t < result.time &&
                        0.0 <= gamma && gamma <= 1.0 &&
                        0.0 <= beta &&
                        beta <= 1.0 - gamma) {
                    result.time = t;
                    result.shape = tris[i + j]->parent;
                    result.tri = tris[i + j]->num_tri;
                    result.x = beta;
                    result.y = gamma;
                }
            }
        }

        if (result.time == std::numeric_limits<float>::infinity())
            result.time = -1.0;

        return result;
    }
}
