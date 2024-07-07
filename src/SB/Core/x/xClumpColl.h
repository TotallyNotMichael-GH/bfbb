#ifndef XCLUMPCOLL_H
#define XCLUMPCOLL_H

#include <types.h>

#include <rwcore.h>
#include <rpworld.h>

struct xClumpCollBSPBranchNode
{
    U32 leftInfo;
    U32 rightInfo;
    F32 leftValue;
    F32 rightValue;
};

struct xClumpCollBSPVertInfo
{
    U16 atomIndex;
    U16 meshVertIndex;
};

struct xClumpCollBSPTriangle
{
    union
    {
        xClumpCollBSPVertInfo i;
        RwV3d* p;
    } v;
    U8 flags;
    U8 platData;
    U16 matIndex;
};

struct xClumpCollBSPTree
{
    U32 numBranchNodes;
    xClumpCollBSPBranchNode* branchNodes;
    U32 numTriangles;
    xClumpCollBSPTriangle* triangles;
};

struct nodeInfo
{
    U32 type;
    U32 index;
};
struct RwMeshCache
{
    U32 lengthOfMeshesArray;
    RwResEntry* meshes[1];
};

struct TempAtomicList
{
    RpAtomic* atomic;
    RpGeometry* geom;
    RpMeshHeader* meshHeader;
    RwMeshCache* meshCache;
};

void xClumpColl_InstancePointers(xClumpCollBSPTree* tree, RpClump* clump);
xClumpCollBSPTree* xClumpColl_StaticBufferInit(void* data, U32 param_2);

#endif
