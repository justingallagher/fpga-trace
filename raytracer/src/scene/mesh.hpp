/**
 * @file mesh.hpp
 * @brief Mesh class and OBJ loader.
 *
 * @author Eric Butler (edbutler)
 * @author Zeyang Li (zeyangl)
 */

#ifndef _462_SCENE_MESH_HPP_
#define _462_SCENE_MESH_HPP_

#include "math/vector.hpp"
#include "application/opengl.hpp"

#include <vector>
#include <cassert>

namespace _462 {

struct MeshVertex
{
    Vector3 position;
    Vector3 normal;
    Vector2 tex_coord;
};

struct MeshTriangle
{
    // index into the vertex list of the 3 vertices
    unsigned int vertices[3];
};

/**
 * A mesh of triangles.
 */
class Mesh
{
public:

    Mesh();
    ~Mesh();

    /**
     * Loads the model into a list of triangles and vertices.
     * @return True on success.
     */
    bool load();
    bool load_nat();
    void save_nat();

    /// Get a pointer to the triangles.
    const MeshTriangle* get_triangles() const;
    /// The number of elements in the triangle array.
    size_t num_triangles() const;
    /// Get a pointer to the vertices.
    const MeshVertex* get_vertices() const;
    /// The number of elements in the vertex array.
    size_t num_vertices() const;

    /// Returns true if the loaded model contained normal data.
    bool are_normals_valid() const;
    /// Returns true if the loaded model contained texture coordinate data.
    bool are_tex_coords_valid() const;

    // scene loader stores the filename of the mesh here
    std::string filename;

    /// Creates opengl data for rendering and computes normals if needed
    bool create_gl_data();
    /// Renders the mesh using opengl.
    void render() const;

    typedef std::vector< MeshTriangle > MeshTriangleList;
    typedef std::vector< MeshVertex > MeshVertexList;

    // The list of all triangles in this model.
    MeshTriangleList triangles;

    // The list of all vertices in this model.
    MeshVertexList vertices;

    bool has_tcoords;
    bool has_normals;

    bool initialize();
    void computeNormals();
private:

    typedef std::vector< float > FloatList;
    typedef std::vector< unsigned int > IndexList;

    // the vertex data used for GL rendering
    FloatList vertex_data;
    // the index data used for GL rendering
    IndexList index_data;

    GLuint vertex_gldata;
    GLuint index_gldata;

    // prevent copy/assignment
    Mesh( const Mesh& );
    Mesh& operator=( const Mesh& );

};


} /* _462 */

#endif /* _462_SCENE_MESH_HPP_ */

