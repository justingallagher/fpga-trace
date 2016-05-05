
#ifndef _462_SCENE_BOUND_HPP_
#define _462_SCENE_BOUND_HPP_
#include "math/vector.hpp"
#include "scene/ray.hpp"
namespace _462{
    
//axis aligned bounding box - may be useful in a BVH
class Bound{
public:
    //the lowest coordinates in the box
    Vector3 lower;
    //the highest coordinates in the box
    Vector3 upper;
    Bound(Vector3 l,Vector3 u):lower(l),upper(u){}
    Bound(Vector3 a):lower(a),upper(a){}
    Bound(Bound a,Bound b){
        lower.x=std::min(a.lower.x,b.lower.x);
        lower.y=std::min(a.lower.y,b.lower.y);
        lower.z=std::min(a.lower.z,b.lower.z);
        
        upper.x=std::max(a.upper.x,b.upper.x);
        upper.y=std::max(a.upper.y,b.upper.y);
        upper.z=std::max(a.upper.z,b.upper.z);
    }
    Bound(){
        lower.x=INFINITY;
        lower.y=INFINITY;
        lower.z=INFINITY;
        
        upper.x=-INFINITY;
        upper.y=-INFINITY;
        upper.z=-INFINITY;
    }
    bool intersects(Ray &ray) const;
    real_t dim(int i){return upper[i]-lower[i];}
    void assertIn(Vector3 other){
        for(int i =0;i<3;i++){
            assert(lower[i]<=other[i] && other[i]<=upper[i]);
        }
    }
};
static std::ostream& operator<<( std::ostream& os, const Bound& b )
{
    return os << "Bound(" << b.lower << ", " << b.upper << ")";
}

}
#endif /* defined(_462_SCENE_BOUND_HPP_) */
