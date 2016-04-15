/**
 * @file material.hpp
 * @brief Material class
 *
 * @author Eric Butler (edbutler)
 */

#ifndef _462_SCENE_MATERIAL_HPP_
#define _462_SCENE_MATERIAL_HPP_

#include "math/color.hpp"
#include "math/vector.hpp"
#include "application/opengl.hpp"
#include "scene/texture.hpp"
#include <string>

namespace _462 {
class Material
{
public:

    Material();
    ~Material();

    // ambient color (ignored if refractive_index != 0)
    Color3 ambient;

    // diffuse color
    Color3 diffuse;

    // specular (reflective) color
    Color3 specular;

    // IGNORE THIS FOR THE RAYTRACER, only used for the OpenGL renderer
    real_t shininess;

    // refractive index of material dielectric. 0 is special case for
    // infinity, i.e. opaque. Any other value means transparent with the
    // given refractive index.
    real_t refractive_index;

    /**
     * Loads the texture from a file and optionally create a gl texture handle
     * for it. DO NOT CALL EVERY FRAME, as it will re-load the texture each time.
     * @return true on success, false on error.
     */
    bool load();


    /// Creates opengl data for rendering
    bool create_gl_data();

    /// sets all the gl state for this material
    void set_gl_state() const;

    /// clears out setting that depend on this material, such as the texture.
    /// leaves other settings unchanged for efficiency.
    void reset_gl_state() const;

    Texture texture;
    Texture bump;

private:

    // opengl descriptor of the texture
    GLuint tex_handle;

    // prevent copy/assignment
    Material( const Material& );
    Material& operator=( const Material& );
};

} /* _462 */

#endif /* _462_SCENE_MATERIAL_HPP_ */

