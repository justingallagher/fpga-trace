#include "scene/bound.hpp"
namespace _462{
bool Bound::intersects(Ray &ray) const{
    real_t id0=1.0/ray.d[0];
    real_t id1=1.0/ray.d[1];
    real_t id2=1.0/ray.d[2];
    real_t t1 = (lower[0]-ray.e[0])*id0;
    real_t t2 = (upper[0]-ray.e[0])*id0;
    real_t t3 = (lower[1]-ray.e[1])*id1;
    real_t t4 = (upper[1]-ray.e[1])*id1;
    real_t t5 = (lower[2]-ray.e[2])*id2;
    real_t t6 = (upper[2]-ray.e[2])*id2;
    real_t tl0=std::min(t1,t2);
    real_t tu0=std::max(t1,t2);
    real_t tl1=std::min(t3,t4);
    real_t tu1=std::max(t3,t4);
    real_t tl2=std::min(t5,t6);
    real_t tu2=std::max(t5,t6);
    real_t tl=std::max(std::max(tl0,tl1),tl2);
    real_t tu=std::min(std::min(tu0,tu1),tu2);
    return tl<tu;
}
}