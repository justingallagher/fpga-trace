/**
 * @file material.cpp
 * @brief Material class
 *
 * @author Eric Butler (edbutler)
 */

#include "scene/material.hpp"
#include "application/imageio.hpp"

namespace _462 {

Material::Material():
    ambient( Color3::White() ),
    diffuse( Color3::White() ),
    specular( Color3::Black() ),
    shininess( 10.0 ),
    refractive_index( 0.0 ){
    tex_handle = 0;
}

Material::~Material()
{
    
    if ( tex_handle ) {
        glDeleteTextures( 1, &tex_handle );
    }
}

bool Material::load()
{
    texture.load();
    bump.load();
    return true;
}


bool Material::create_gl_data()
{
    // if no texture, nothing to do
    if ( texture.filename.empty() )
        return true;

    if ( !texture.data ) {
        return false;
    }

    // clean up old texture
    if ( tex_handle ) {
        glDeleteTextures( 1, &tex_handle );
    }

    assert( texture.width > 0 && texture.height > 0 );

    glGenTextures( 1, &tex_handle );
    if ( !tex_handle ) {
        return false;
    }

    glBindTexture( GL_TEXTURE_2D, tex_handle );
    glTexImage2D( GL_TEXTURE_2D, 0, GL_RGBA, texture.width, texture.height, 0, GL_RGBA, GL_UNSIGNED_BYTE, texture.data );

    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );

    glBindTexture( GL_TEXTURE_2D, 0 );
    std::cout << "Loaded GL texture" << texture.filename << '\n';
    return true;
}

void Material::set_gl_state() const
{
    float arr[4];
    arr[3] = 1.0; // alpha always 1.0

    // always bind, because if no texture this will set texture to nothing
    glBindTexture( GL_TEXTURE_2D, tex_handle );

    ambient.to_array( arr );
    glMaterialfv( GL_FRONT_AND_BACK, GL_AMBIENT,   arr );
    diffuse.to_array( arr );
    glMaterialfv( GL_FRONT_AND_BACK, GL_DIFFUSE,   arr );
    specular.to_array( arr );
    glMaterialfv( GL_FRONT_AND_BACK, GL_SPECULAR,  arr );
    // make up a shininess term
    glMaterialf( GL_FRONT_AND_BACK, GL_SHININESS, shininess );
}


void Material::reset_gl_state() const
{
    glBindTexture( GL_TEXTURE_2D, 0 );
}

}
