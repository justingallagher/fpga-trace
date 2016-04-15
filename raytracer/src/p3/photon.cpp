//
//  photon.cpp
//  Photon Mapper
//
//  Created by Nathan A. Dobson on 2/3/15.
//  Copyright (c) 2015 CMU 15462. All rights reserved.
//

#include "photon.hpp"
#include "math/quickselect.hpp"
namespace _462{

Bound globalBounds;
bool PhotonAxis::operator() (Photon &i,Photon &j) {
    return (i.position()[axis.axis]<j.position()[axis.axis]);
}

//organize the given unsorted range into a proper kd tree
void makeTree(
             std::vector<Photon>::iterator first,
             std::vector<Photon>::iterator last){
    assert(false);
}

Color3 Photon::color(){
    assert(false);
}

Vector3 Photon::position(){
    assert(false);
}
Vector3 Photon::normal(){
    assert(false);
}


}