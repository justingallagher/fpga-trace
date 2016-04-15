//
//  photon.h
//  Photon Mapper
//
//  Created by Nathan A. Dobson on 2/3/15.
//  Copyright (c) 2015 CMU 15462. All rights reserved.
//

#ifndef __Photon_Mapper__photon__
#define __Photon_Mapper__photon__

#include <stdio.h>

#include <math/axis.hpp>
#include <math/color.hpp>
#include <limits.h>
#include "scene/bound.hpp"
namespace _462{


//a single photon (Also represents a node in a KD tree)
class Photon{
    //there should probably be some fields here
    //the getters and setters should also be implemented
    //Once your code is more or less correct, you'll want to take
    //another look here. You should be able to get the size of this
    //class down to 32 bytes by choosing more compact types and
    //rearranging fields.
public:
    Vector3 normal();
    void normal(Vector3 v);
    Color3 color();//getter
    void color(Color3 c);//setter
    Vector3 position();//getter
    void position(Vector3 v);//setter

};

//a wrapper for the axis class that can order
//photons by their coordinate along that axis
class PhotonAxis{
public:
    Axis axis;
    PhotonAxis(Axis a):axis(a){}
    bool operator() (Photon &a,Photon &b);
};
}
#endif /* defined(__Photon_Mapper__photon__) */
