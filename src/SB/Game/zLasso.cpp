#include "zLasso.h"

#include "iModel.h"

#include <types.h>

static u32 sLassoRaster;
static u32 sNumGuideLists;
static zLassoGuide* sCurrentGuide;
static void* lnverts;

static zLassoGuideList sGuideList[64];

static s32 negativeHondaX = 1;

void zLasso_InitTimer(zLasso* lasso, F32 interpTime)
{
    lasso->secsTotal = interpTime;
    lasso->secsLeft = interpTime;

    lasso->stRadius = lasso->tgRadius = lasso->crRadius = 0.0f;
    lasso->stSlack = lasso->tgSlack = lasso->crSlack = 0.0f;

    iModelTagEval(lasso->model->Data, &lasso->tag, lasso->model->Mat, &lasso->crCenter);

    xVec3Copy(&lasso->anchor, (xVec3*)&lasso->model->Mat->pos);
    xVec3SubFrom(&lasso->crCenter, &lasso->anchor);
    xVec3Copy(&lasso->honda, &lasso->crCenter);

    lasso->currDist = lasso->lastDist = 0.0f;

    xVec3Init(&lasso->stNormal, 0, 1, 0);
    xVec3Init(&lasso->tgNormal, 0, 1, 0);
    xVec3Init(&lasso->crNormal, 0, 1, 0);

    xVec3Copy(&lasso->lastRefs[0], &lasso->crCenter);
    xVec3Copy(&lasso->lastRefs[1], &lasso->crCenter);
    xVec3Copy(&lasso->lastRefs[2], &lasso->crCenter);
    xVec3Copy(&lasso->lastRefs[3], &lasso->crCenter);
    xVec3Copy(&lasso->lastRefs[4], &lasso->crCenter);

    lasso->reindex[0] = 0;
    lasso->reindex[1] = 1;
    lasso->reindex[2] = 2;
    lasso->reindex[3] = 3;
    lasso->reindex[4] = 4;
}

void zLasso_ResetTimer(zLasso* lasso, F32 interpTime)
{
    f32 temp_f0;
    f32 temp_f0_2;

    lasso->secsTotal = interpTime;
    lasso->secsLeft = interpTime;
    temp_f0 = lasso->crRadius;
    lasso->stRadius = temp_f0;
    lasso->tgRadius = temp_f0;
    temp_f0_2 = lasso->crSlack;
    lasso->stSlack = temp_f0_2;
    lasso->tgSlack = temp_f0_2;
    xVec3Copy(&lasso->stNormal, &lasso->crNormal);
    xVec3Copy(&lasso->tgNormal, &lasso->crNormal);
    xVec3Add(&lasso->stCenter, &lasso->crCenter, &lasso->anchor);
}

void fizzicalRadius(zLasso* lasso, f32 arg1, xVec3* arg2)
{
    lasso->crRadius = -((2.0f * (0.75f - lasso->crSlack) * arg1) - lasso->crRadius);
    if (lasso->crRadius < 0.0f)
    {
        lasso->crRadius = 0.0f;
    }
}

void fizzicalCenter(zLasso* lasso, f32 arg1, xVec3* arg2)
{
    xVec3AddScaled(&lasso->crCenter, &lasso->lastRefs[lasso->reindex[4]], -0.2f);
    xVec3AddScaled(&lasso->crCenter, arg2, 0.2f);
}

void fizzicalNormal(zLasso* lasso, f32 arg1, xVec3* arg2)
{
    xVec3 sp8;
    f32 temp_f31;

    xVec3Sub(&sp8, &lasso->lastRefs[lasso->reindex[0]], &lasso->lastRefs[lasso->reindex[1]]);
    temp_f31 = xVec3Dot(&lasso->crNormal, &sp8);
    xVec3AddScaled(&lasso->crNormal, &sp8, 1.1f * (-temp_f31 / xVec3Length(&sp8)));
    xVec3Normalize(&lasso->crNormal, &lasso->crNormal);
}

void fizzicalHonda(zLasso* lasso, f32 arg1, xVec3* arg2)
{
    xVec3* temp_r3;

    xVec3SMul(&lasso->honda, arg2, -1.0f);
    xVec3AddScaled(&lasso->honda, &lasso->lastRefs[lasso->reindex[0]], 0.571429f);
    xVec3AddScaled(&lasso->honda, &lasso->lastRefs[lasso->reindex[1]], 0.285714f);
    xVec3AddScaled(&lasso->honda, &lasso->lastRefs[lasso->reindex[2]], 0.142857f);
    xVec3AddScaled(&lasso->honda, &lasso->crNormal, -xVec3Dot(&lasso->crNormal, &lasso->honda));
    temp_r3 = &lasso->honda;
    xVec3Normalize(temp_r3, temp_r3);
    xVec3SMulBy(&lasso->honda, lasso->crRadius);
    if (((s32)negativeHondaX != 0) && (lasso->honda.x > 0.0f))
    {
        xSndPlay3D(xStrHash(&"rope\0sound_rope_windup"[5]), 0.77f, 0.0f, 0U, 0x10000U,
                   &lasso->anchor, 100.0f, (sound_category)0, 0.0f);
        negativeHondaX = 0;
    }
    if (lasso->honda.x < 0.0f)
    {
        negativeHondaX = 1;
    }
    xVec3AddTo(&lasso->honda, &lasso->crCenter);
}

void nonfizzicalHonda(zLasso* lasso, f32 arg1, xVec3* arg2)
{
    f32 temp_f1;

    xVec3Sub(&lasso->honda, arg2, &lasso->crCenter);
    xVec3AddScaled(&lasso->honda, &lasso->crNormal, -xVec3Dot(&lasso->honda, &lasso->crNormal));
    temp_f1 = xVec3Length2(&lasso->honda);
    if (temp_f1 < 0.00001f)
    {
        lasso->honda.x = lasso->crNormal.y;
        lasso->honda.y = -lasso->crNormal.x;
        lasso->honda.z = 0.0f;
        xVec3SMulBy(&lasso->honda, lasso->crRadius / xsqrt(xVec3Length2(&lasso->honda)));
        xVec3AddTo(&lasso->honda, &lasso->crCenter);
        return;
    }
    xVec3SMulBy(&lasso->honda, lasso->crRadius / xsqrt(temp_f1));
    xVec3AddTo(&lasso->honda, &lasso->crCenter);
}

void fizzicalSlack(zLasso* lasso, f32 arg1, xVec3* arg2)
{
    f32 temp_f1;

    lasso->crSlack += (2.0f * (lasso->lastDist - lasso->currDist)) - (0.6f * arg1);
    temp_f1 = lasso->crSlack;
    if (temp_f1 < 0.0f)
    {
        lasso->crSlack = 0.0f;
        return;
    }
    if (temp_f1 > 1.0f)
    {
        lasso->crSlack = 1.0f;
    }
}

void zLasso_scenePrepare()
{
    sNumGuideLists = 0;
    sCurrentGuide = NULL;
}
