#ifndef ZNPCTYPEDUPLOTRON_H
#define ZNPCTYPEDUPLOTRON_H

#include "zNPCTypeCommon.h"

struct zNPCDuplotron : zNPCCommon
{
    F32 tmr_smokeCycle;
    zNPCSpawner* spawner;
    F32 tmr_blink;
    S32 idx_blink;

    zNPCDuplotron(S32 myType);

    void SelfSetup();

    void VFXSmokeStack(F32 dt);
    void VFXOverheat(F32 dt, F32);
    void VFXCycleLights(F32 dt, S32 fastpace);

    // zNPCTypeCommon overrides
    void Move(xScene*, F32 dt, xEntFrame*);

    // xNPCBasic overrides
    U8 ColChkFlags() const;
    U8 ColPenFlags() const;
    U8 ColChkByFlags() const;
    U8 ColPenByFlags() const;
    U8 PhysicsFlags() const;
};

extern U32 g_hash_dupoanim[5];

void ZNPC_Duplotron_Startup();
void ZNPC_Duplotron_Shutdown();
xFactoryInst* ZNPC_Create_Duplotron(S32 who, RyzMemGrow* grow, void*);
void ZNPC_Destroy_Duplotron(xFactoryInst* inst);
void DUPO_KillEffects();
void DUPO_InitEffects();

#endif
