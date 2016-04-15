/**
 * @file scene_loader.hpp
 * @brief Scene Loader
 *
 * @author Eric Butler (edbutler)
 */

#ifndef _462_APPLICATOIN_SCENELOADER_HPP_
#define _462_APPLICATOIN_SCENELOADER_HPP_

namespace _462 {

class Scene;

/**
 * Loads a scene from a .scene file.
 * Clears away the old scene. Prints a message to stdout if an error occurs.
 * @return True on success, false on error.
 * Will clear the scene on error.
 */
bool load_scene( Scene* scene, const char* filename );

} /* _462 */

#endif /* _462_APPLICATOIN_SCENELOADER_HPP_ */

