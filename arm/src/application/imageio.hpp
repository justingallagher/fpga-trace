/* LIBRARY:   ImageIO Library v0.13
 *
 * FILE:      imageio.hpp
 *
 * COPYRIGHT: Copyright (c) 2003-2004 Adrien Treuille
 *
 * AUTHORS:   Adrien Treuille (treuille [AT] cs [DOT] washington [DOT] edu)
 *            Kristin Siu
 *
 * LICENSE:   The ImageIO Library is supplied "AS IS".  The Authors
 *            disclaim all warranties, expressed or implied,
 *            including, without limitation, the warranties of
 *            merchantability and of fitness for any purpose.
 *            The Authors assume no liability for direct, indirect,
 *            incidental, special, exemplary, or consequential
 *            damages, which may result from the use of the ImageIO
 *            Library, even if advised of the possibility of such
 *            damage.
 *
 *            Permission is hereby granted to use, copy, modify,
 *            and distribute this source code, or portions hereof,
 *            for any purpose, without fee, for non-commercial
 *            purposes. All rights reserved for commercial uses of
 *            this source code.
 */

#ifndef _462_APPLICATION_IMAGEIO_HPP_
#define _462_APPLICATION_IMAGEIO_HPP_

#include <cstdlib>

namespace _462 {

// Sets tbe width and height to the appropriate values and mallocs
// a char *buffer loading up the values in row-major, RGBA format.
// The memory associated with the buffer can be deallocated with free().
// If there was an error reading file, then 0 is returned, and
// width = height are set to -1.
unsigned char* imageio_load_image( const char* filename, int *width, int *height );

// Saves image given by buffer with specicified width and height
// to the given file name, returns true on success, false otherwise.
// The image format is RGBA.
bool imageio_save_image( const char* filename, unsigned char* buffer, int width, int height );

// Writes the current opengl frame buffer to a specified file name.
// Returns true on succces, false otherwise.
bool imageio_save_screenshot( const char* filename, int width, int height );

// puts a default filename in name, up to len characters
void imageio_gen_name( char* filename, size_t len );

} /* _462 */

#endif /* _462_APPLICATION_IMAGEIO_HPP_ */
