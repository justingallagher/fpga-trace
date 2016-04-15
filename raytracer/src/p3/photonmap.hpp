#ifndef _462_PHOTONMAP_HPP_
#define _462_PHOTONMAP_HPP_

#include "math/color.hpp"
#include "math/random462.hpp"
#include "p3/photon.hpp"
#include "p3/neighbor.hpp"
#include "application/opengl.hpp"
#include "scene/ray.hpp"
#include "scene/scene.hpp"
#include "p3/util.hpp"

namespace _462 {
class PhotonMap{
    public:
    PhotonMap();
    Scene *scene;
    void trace_photon(std::vector<Photon> &photon,Color3 color,Ray ray,int depth);
    void send_photons();
    void update_photons();
    void initialize(Scene *scene);
    void render_photons();
private:
    std::vector<Photon> *all_raw_photons;
    GLuint geometry_array;
    size_t geometry_array_size;
};
}
#endif /*_462_PHOTONMAP_HPP_*/