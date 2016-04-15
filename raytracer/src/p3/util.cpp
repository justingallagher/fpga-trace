#include "p3/util.hpp"
namespace _462{


//ensures that the light has a maximum intensity of 1, and in order
//to cancel this scaling factor, returns the probability of continuing.
real_t montecarlo(Color3& light){
    real_t factor=std::max(light.r,std::max(light.g,light.b));
    light*=1.0/factor;
    return factor;
}

}
