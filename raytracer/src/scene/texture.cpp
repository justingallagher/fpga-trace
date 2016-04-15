//
//  texture.cpp
//  
//
//  Created by Nathan A. Dobson on 2/1/15.
//  @author Justin Gallagher (jrgallag)
//
//

#include "scene/texture.hpp"
namespace _462{
const unsigned char* Texture::get_texture_data() const
{
    return data;
}

void Texture::get_texture_size( int* w, int* h ) const
{
    assert( w && h );
    *w = this->width;
    *h = this->height;
}

Color3 Texture::get_texture_pixel( int x, int y ) const
{
    if(width<=0 || height<=0){
        return Color3::White();
    }
    x=x%width;
    while(x<0){
        x+=width;
    }
    y=y%height;
    while(y<0){
        y+=height;
    }
    assert(x>=0 && y>=0 && x<width && y<height);
    return data ? Color3( data + 4 * (x + y * width) ) : Color3::White();
}

/**
 * returns the color of the (u, v) pixel, where u and v range from
 * [0, 1]. Return white if there is no texture.
 */
Color3 Texture::get_texture_coord(real_t u, real_t v) const {
    return get_texture_pixel(u * (width - 1), v * (height - 1));
}

bool Texture::load(){
    // if no texture, nothing to do
    if ( filename.empty() )
        return true;
    
    std::cout << "Loading texture " << filename << "...\n";
    
    // allocates data with malloc
    data = imageio_load_image( filename.c_str(), &width, &height );
    
    if ( !data ) {
        std::cerr << "Cannot load texture file " << filename << std::endl;
        return false;
    }
    std::cout << "Finished loading texture" << std::endl;
    return true;
}

Color3 Texture::sample(Vector2 coord) const{
    assert(false);
}
}
