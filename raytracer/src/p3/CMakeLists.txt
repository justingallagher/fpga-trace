add_executable(p3 main.cpp raytracer.cpp photon.cpp neighbor.cpp photonmap.cpp util.cpp randomgeo.cpp)
target_link_libraries(p3 application math scene tinyxml ${SDL_LIBRARY}
                      ${PNG_LIBRARIES} ${OPENGL_LIBRARIES} ${GLUT_LIBRARIES}
                      ${GLEW_LIBRARIES})

if(APPLE)
    target_link_libraries(p3)
endif()

install(TARGETS p3 DESTINATION ${PROJECT_SOURCE_DIR}/..)
