//
//  axis.h
//  Photon Mapper
//
//  Created by Nathan A. Dobson on 2/3/15.
//  Copyright (c) 2015 CMU 15462. All rights reserved.
//

#ifndef __Photon_Mapper__axis__
#define __Photon_Mapper__axis__

#include <stdio.h>
#include <math/vector.hpp>

namespace _462{

//a class for representing one of the three axes in space

class Axis {
public:
    int axis;//0,1,2 for x,y,z
    Axis (int a) : axis(a) { }
    bool operator() (Vector3 &i,Vector3 &j){
        return (i[axis]<j[axis]);
    }
    Axis next(){return Axis((axis+1)%3);}
};

//an axis-aligned plane in space
class Plane{
public:
    real_t coordinate;//displacement along axis from origin
    Axis axis;
    Plane(real_t c,Axis a): coordinate(c), axis(a){}
    Plane(): coordinate(NAN), axis(0){}//Used in cases where Plane really should be an Option type
};
}
#endif /* defined(__Photon_Mapper__axis__) */
