/**
 * @file camera_roam.cpp
 * @brief CameraRoamControl class
 *
 * @author Zeyang Li (zeyangl)
 * @author Eric Butler (edbutler)
 * @description   this file implements a free roam camera
 */

#include "application/camera_roam.hpp"

namespace _462 {

static const real_t DirectionTable[] = { 0.0, 1.0, -1.0 };
static const real_t TranslationSpeed = 2.0;
static const real_t RotationSpeed = 0.02;

CameraRoamControl::CameraRoamControl()
{
    direction[0] = DZERO;
    direction[1] = DZERO;
    direction[2] = DZERO;
    rotation = RNONE;
}

CameraRoamControl::~CameraRoamControl()
{

}

void CameraRoamControl::set_dir( bool pressed, int index, Direction newdir )
{
    // fi pressed set, otherwise only undo it if other direction is not the one being pressed
    if ( pressed )
        direction[index] = newdir;
    else if ( direction[index] == newdir )
        direction[index] = DZERO;
}

void CameraRoamControl::handle_event( const Application* app, const SDL_Event& event )
{
    int width, height;
    app->get_dimension( &width, &height );
    int newidx = -1;
    Direction newdir = DZERO;

    switch ( event.type )
    {
    case SDL_KEYDOWN:
    case SDL_KEYUP:
        switch( event.key.keysym.sym )
        {
        case SDLK_w:
            newidx = 2;
            newdir = DNEG;
            break;
        case SDLK_s:
            newidx = 2;
            newdir = DPOS;
            break;
        case SDLK_a:
            newidx = 0;
            newdir = DNEG;
            break;
        case SDLK_d:
            newidx = 0;
            newdir = DPOS;
            break;
        case SDLK_q:
            newidx = 1;
            newdir = DNEG;
            break;
        case SDLK_e:
            newidx = 1;
            newdir = DPOS;
            break;
        default:
            newidx = -1;
            break;
        }

        if ( newidx != -1 ) {
            set_dir( event.key.state == SDL_PRESSED, newidx, newdir );
        }
        break;

    case SDL_MOUSEBUTTONDOWN:
        // enable rotation
        if ( event.button.button == SDL_BUTTON_LEFT )
            rotation = RPITCHYAW;
        else if ( event.button.button == SDL_BUTTON_MIDDLE )
            rotation = RROLL;
        break;

    case SDL_MOUSEBUTTONUP:
        // disable rotation
        if ( event.button.button == SDL_BUTTON_LEFT && rotation == RPITCHYAW )
            rotation = RNONE;
        else if ( event.button.button == SDL_BUTTON_MIDDLE && rotation == RROLL )
            rotation = RNONE;
        break;

    case SDL_MOUSEMOTION:
        if ( rotation == RPITCHYAW ) {
            camera.yaw( -RotationSpeed * event.motion.xrel );
            camera.pitch( -RotationSpeed * event.motion.yrel );
        } else if ( rotation == RROLL ) {
            camera.roll( RotationSpeed * event.motion.yrel );
        }
        break;

    default:
        break;
    }
}

void CameraRoamControl::update( real_t dt )
{
    // update the position based on keys
    // no need to update based on mouse, that's done in the event handling
    real_t dist = TranslationSpeed * dt;
    Vector3 displacement(
        DirectionTable[direction[0]],
        DirectionTable[direction[1]],
        DirectionTable[direction[2]]
    );
    camera.translate( displacement * dist );
}

}
