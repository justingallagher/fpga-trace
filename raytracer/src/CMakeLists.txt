cmake_minimum_required(VERSION 2.8)
project(P3)

message(STATUS "CMAKE_LIBRARY_PATH variable = ${CMAKE_LIBRARY_PATH}")
message(STATUS "CMAKE_PREFIX_PATH variable = ${CMAKE_PREFIX_PATH}")


include(build/CMakeLists.txt)

include_directories(
    ${PROJECT_SOURCE_DIR}
    ${SDL_INCLUDE_DIR}
    ${GLEW_INCLUDE_DIRS}
    ${PNG_INCLUDE_DIRS}
)

add_subdirectory(application)
add_subdirectory(math)
add_subdirectory(p3)
add_subdirectory(scene)
add_subdirectory(tinyxml)
