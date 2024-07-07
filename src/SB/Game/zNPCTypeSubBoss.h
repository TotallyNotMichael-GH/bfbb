#ifndef ZNPCTYPESUBBOSS_H
#define ZNPCTYPESUBBOSS_H

#include "zNPCTypeCommon.h"
#include "zNPCSupport.h"

struct zNPCSubBoss : zNPCCommon
{
    NPCTarget tgt_cur;

    zNPCSubBoss(S32 myType);

    virtual void Setup();
    virtual U8 ColChkFlags() const;
    virtual U8 ColPenFlags() const;
    virtual U8 ColChkByFlags() const;
    virtual U8 ColPenByFlags() const;
    virtual U8 PhysicsFlags() const;
};

void ZNPC_SubBoss_Startup();
void ZNPC_SubBoss_Shutdown();
void zNPCSubBoss_ScenePrepare();
void zNPCSubBoss_SceneFinish();
xFactoryInst* ZNPC_Create_SubBoss(S32 who, RyzMemGrow* grow, void*);
void ZNPC_Destroy_SubBoss(xFactoryInst* inst);

#endif
