//
//  MeshTree.h
//  p4
//
//  Created by Nathan Dobson on 11/11/14.
//  Copyright (c) 2014 Nathan Dobson. All rights reserved.
//

#ifndef __p4__MeshTree__
#define __p4__MeshTree__

#include <stdio.h>
#include <scene/mesh.hpp>
#include <scene/scene.hpp>
#include <math/axis.hpp>

namespace _462 {


class MeshTree{
public:
};


MeshTree *makeFlatTree(const Mesh *mesh);
void refine(const Mesh *mesh,MeshTree *tree);
MeshTree *makeRecTree(const Mesh *mesh);
void refineRec(const Mesh *mesh,MeshTree *tree);

Bound setBounds(const Mesh *mesh,MeshTree *tree);
} //namespace _462
#endif /* defined(__p4__MeshTree__) */
