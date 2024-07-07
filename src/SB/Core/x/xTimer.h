#ifndef XTIMER_H
#define XTIMER_H

#include "xBase.h"

struct xTimerAsset : xBaseAsset
{
    F32 seconds;
    F32 randomRange;
};

struct xTimer : xBase
{
    xTimerAsset* tasset;
    U8 state;
    U8 runsInPause;
    U16 flags;
    F32 secondsLeft;
};

struct xScene;

void xTimerInit(void* b, void* tasset);
void xTimerSave(xTimer* ent, xSerial* s);
void xTimerLoad(xTimer* ent, xSerial* s);
void xTimerUpdate(xBase* to, xScene*, F32 dt);

#endif
