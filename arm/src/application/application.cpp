/**
 * @file application.cpp
 * @brief Application class and SDL windowing code.
 *
 * @author Eric Butler (edbutler)
 */

#include "application/application.hpp"
#include "application/opengl.hpp"
#include "application/imageio.hpp"
#include <SDL.h>
#include <cassert>
#include <cstdlib>
#include <iostream>

namespace _462 {

struct LoopData
{
    Application* app;
    real_t fps;
    // so it will behave correctly if used for multi-threaded applications
    volatile bool* running;
};

// header function definitions

Application::Application()
    : running( false ) { }

Application::~Application() { }

void Application::end_main_loop()
{
    running = false;
}

void Application::get_dimension( int* width, int* height ) const
{
    assert( width && height );
    SDL_Surface* surface = SDL_GetVideoSurface();
    assert( surface );
    *width = surface->w;
    *height = surface->h;
}

void Application::take_screenshot()
{
    static const size_t MAX_LEN = 256;
    char filename[MAX_LEN];
    int width, height;

    get_dimension( &width, &height );
    imageio_gen_name( filename, MAX_LEN );

    if ( imageio_save_screenshot( filename, width, height ) ) {
        std::cout << "Saved image to '" << filename << "'.\n";
    } else {
        std::cout << "Error saving raytraced image to '" << filename << "'.\n";
    }
}

// sets up the main window
static bool initialize_window( int width, int height, const char* title )
{
    // set the caption
    SDL_WM_SetCaption( title, title );

    // used the preferred bpp
    unsigned int bits_per_pixel = SDL_GetVideoInfo()->vfmt->BitsPerPixel;
    unsigned int flags = SDL_OPENGL;

    // se up opengl stuff
    SDL_GL_SetAttribute( SDL_GL_BUFFER_SIZE, bits_per_pixel );
    SDL_GL_SetAttribute( SDL_GL_DOUBLEBUFFER, 1 );

    // create the window
    if ( SDL_SetVideoMode( width, height, bits_per_pixel, flags ) == 0 ) {
        std::cout << "Error initializing SDL surface: " << SDL_GetError() << ", aborting initialization." << std::endl;
        return false;
    }

    GLenum err;
    if ( (err = glewInit()) != GLEW_OK ) {
        std::cout << "Error initializing GLEW: " << glewGetErrorString(err) << std::endl;
        return false;
    }

    glPixelStorei( GL_UNPACK_ALIGNMENT, 1 );
    glPixelStorei( GL_PACK_ALIGNMENT, 1 );

    return true;
}

static void process_events( Application* app )
{
    assert( app );

    SDL_Event event;
    while ( SDL_PeepEvents( &event, 1, SDL_GETEVENT, SDL_ALLEVENTS ) ) {
        switch ( event.type )
        {
        case SDL_QUIT:
            app->end_main_loop();
            break;

        case SDL_KEYDOWN:
            if ( event.key.keysym.sym == SDLK_ESCAPE ) {
                app->end_main_loop();
            }
            break;

        default:
            break;
        }
        app->handle_event( event );
    }
}

/**
 * The single-threaded update function.
 */
static void loop_update_func( LoopData* data, bool is_skip )
{
    // always pump events and update
    SDL_PumpEvents();
    process_events( data->app );
    data->app->update( 1.0 / data->fps );
    // only render if not skipping this frame
    if ( !is_skip ) {
        data->app->render();
        // flush so the code doesn't have to remember to
        glFlush();
        // swap buffers
        SDL_GL_SwapBuffers();
    }
}

/**
 * Works with any update function.
 */
static void run_main_loop( void (*update_fn)( LoopData*, bool ), LoopData* data, real_t ups )
{
    assert( data->running && ups > 0 );

    // maximum number of frame skips before we force a render
    static const int MAX_SKIPS = 3;
    // the maximum possible lag time, lag is capped here
    static const int MAX_LAG_TIME = 100;
    // frequency at which to print frame rate info
    static const int FRAME_RATE_PRINT_TIME = 600;

    int period = static_cast< int >( 1000.0 / ups ); // frame period in milliseconds

    // how far we are behind the target framerate
    int lag_time = 0;
    // the number of updates since the last render
    int num_skips = 0;
    // time since last frame counter start
    int frame_rate_counter_start = SDL_GetTicks();
    // frame rate counter
    int frame_rate_counter = 0;
    int total_frame_time = 0;

    while ( *data->running ) {
        int start_time = SDL_GetTicks();

        // update, only if we are not too far behind, or if we've skipped too many frames
        if ( lag_time < period || num_skips >= MAX_SKIPS ) {
            // update
            update_fn( data, false );
            num_skips = 0;
            frame_rate_counter++;
        } else {
            update_fn( data, true );
            num_skips++;
        }

        if ( frame_rate_counter == FRAME_RATE_PRINT_TIME ) {
            int curr_time = SDL_GetTicks();
            printf( "frame rate: %f, avg frame time: %f\n",
                FRAME_RATE_PRINT_TIME * 1000 / real_t(curr_time - frame_rate_counter_start),
                real_t(total_frame_time) / FRAME_RATE_PRINT_TIME
            );
            frame_rate_counter_start = curr_time;
            frame_rate_counter = 0;
            total_frame_time = 0;
        }

        // compute sleep time until end of period, may be negative
        int end_time = SDL_GetTicks();
        int time_diff = end_time - start_time;
        int sleep_time = period - time_diff - lag_time;

        total_frame_time += time_diff;

        // always yield at least once to keep system responsive
        SDL_Delay( 1 );

        if ( sleep_time > 0 ) {
            // sleep until end of period
            while ( int(SDL_GetTicks()) < end_time + sleep_time ) {
                SDL_Delay( sleep_time - 1 );
            }
            // if we oversleep, add to lag. note this must be nonnegative
            // because of the while loop above
            lag_time = (int)(SDL_GetTicks()) - (end_time + sleep_time);
        } else {
            // otherwise mark how much we're falling behind
            // sleep time is negative here, so it's like adding the time we went over
            lag_time = -sleep_time;
        }

        // cap the lag time to avoid lots of skips
        if ( lag_time > MAX_LAG_TIME ) {
            lag_time = MAX_LAG_TIME;
        }
    }
}

int Application::start_application( Application* app, int width, int height, real_t fps, const char* title )
{
    LoopData ldata;

    assert( app );
    // only create an app the first time this function is called
    if ( SDL_WasInit( 0 ) )
        return -2;

    // init SDL
    if ( SDL_Init( SDL_INIT_VIDEO | SDL_INIT_TIMER ) == -1 ) {
        std::cout << "Error initializing SDL: " << SDL_GetError() << std::endl;
        return -1;
    }

    if ( !initialize_window( width, height, title ) )
        goto FAIL;

    // initialize the application
    if ( !app->initialize() )
        goto FAIL;

    // run main loop
    app->running = true;
    ldata.app = app;
    ldata.fps = fps;
    ldata.running = &app->running;
    run_main_loop( loop_update_func, &ldata, fps );

    // clean up and exit
    app->destroy();
    std::cout << "Exiting Normally" << std::endl;
    exit(0);
    return 0;


  FAIL:
    std::cerr << "Failed to start applcation, aborting.\n";
    return -1;
}

} /* _462 */

