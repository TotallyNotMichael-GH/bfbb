#ifndef ZNPCTYPEDUPLOTRON_H
#define ZNPCTYPEDUPLOTRON_H

#include "zNPCTypeCommon.h"

#define NPC_TYPE_ID_DUPLOTRON NPC_TYPE_ID('D', 0)

struct zNPCDuplotron : zNPCCommon
{
    float32 tmr_smokeCycle;
    zNPCSpawner* spawner;
    float32 tmr_blink;
    int32 idx_blink;

    zNPCDuplotron(int32 myType);
};

void ZNPC_Duplotron_Startup();
void ZNPC_Duplotron_Shutdown();
xFactoryInst* ZNPC_Create_Duplotron(int32 who, RyzMemGrow* grow, void*);
void ZNPC_Destroy_Duplotron(xFactoryInst* inst);

#endif