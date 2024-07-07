#include <types.h>
#include <string.h>

#include "xDraw.h"

#include "zGrid.h"
#include "zNPCGoals.h"
#include "zNPCTypeBossSB1.h"
#include "zThrown.h"
#include "zGlobals.h"

#define f822 1.0f
#define f823 0.0f
#define f824 0.2f
#define f825 3.3333333f
#define f890 100.0f
#define f891 -3.5f
#define f892 -2.0f
#define f893 3.5f
#define f894 10.0f
#define f895 2.0f
#define f896 0.6f
#define f983 5.0f
#define f984 1.3f
#define f1008 100000000000000000000000000000000000000.0f // original ASM object
#define f1019 64.0f
#define f1034 0.75f
#define f1043 1.1f
#define f1053 1.5f
#define f1054 90.25f
#define f1065 4.7666664f
#define f1088 6.2831855f
#define f1089 3.1415927f
#define f1090 -3.1415927f
#define f1091 1.5707964f
#define f1160 0.25f
#define f1161 0.5f
#define f1209 0.76666665f
#define f1223 0.05f

extern zEnt* sSB1_armTgtHit;
extern zNPCB_SB1* sSB1_Ptr; // size: 0x4, address: 0x510188

xAnimTable* ZNPC_AnimTable_BossSB1()
{
    int ourAnims[11] = {
        1, 2, 3, 41, 42, 43, 44, 45, 46, 47, 0,
    };

    xAnimTable* table = xAnimTableNew("zNPCB_SB1_Muscle", NULL, 0);

    xAnimTableNewState(table, g_strz_bossanim[1], 0x10, 0, f822, 0x0, 0x0, f823, 0x0, 0x0,
                       xAnimDefaultBeforeEnter, 0x0, 0x0);
    xAnimTableNewState(table, g_strz_bossanim[2], 0, 0, f822, 0x0, 0x0, f823, 0x0, 0x0,
                       xAnimDefaultBeforeEnter, 0x0, 0x0);
    xAnimTableNewState(table, g_strz_bossanim[3], 0, 0, f822, 0x0, 0x0, f823, 0x0, 0x0,
                       xAnimDefaultBeforeEnter, 0x0, 0x0);
    xAnimTableNewState(table, g_strz_bossanim[41], 0x20, 0, f822, 0x0, 0x0, f823, 0x0, 0x0,
                       xAnimDefaultBeforeEnter, 0x0, 0x0);
    xAnimTableNewState(table, g_strz_bossanim[42], 0x10, 0, f822, 0x0, 0x0, f823, 0x0, 0x0,
                       xAnimDefaultBeforeEnter, 0x0, 0x0);
    xAnimTableNewState(table, g_strz_bossanim[43], 0x20, 0, f822, 0x0, 0x0, f823, 0x0, 0x0,
                       xAnimDefaultBeforeEnter, 0x0, 0x0);
    xAnimTableNewState(table, g_strz_bossanim[44], 0x10, 0, f822, 0x0, 0x0, f823, 0x0, 0x0,
                       xAnimDefaultBeforeEnter, 0x0, 0x0);
    xAnimTableNewState(table, g_strz_bossanim[45], 0x10, 0, f822, 0x0, 0x0, f823, 0x0, 0x0,
                       xAnimDefaultBeforeEnter, 0x0, 0x0);
    xAnimTableNewState(table, g_strz_bossanim[46], 0, 0, f822, 0x0, 0x0, f823, 0x0, 0x0,
                       xAnimDefaultBeforeEnter, 0x0, 0x0);
    xAnimTableNewState(table, g_strz_bossanim[47], 0, 0, f822, 0x0, 0x0, f823, 0x0, 0x0,
                       xAnimDefaultBeforeEnter, 0x0, 0x0);

    NPCC_BuildStandardAnimTran(table, g_strz_bossanim, ourAnims, 1, f824);

    xAnimTableNewTransition(table, g_strz_bossanim[41], g_strz_bossanim[42], 0x0, 0x0, 0x10, 0,
                            f823, f823, 0, 0, f823, 0x0);
    xAnimTableNewTransition(table, g_strz_bossanim[43], g_strz_bossanim[1], 0x0, 0x0, 0x10, 0, f823,
                            f823, 0, 0, f823, 0x0);

    xAnimTransition* t = table->TransitionList;
    while (t)
    {
        t->BlendRecip = f825;
        t = t->Next;
    }

    return table;
}

void SB1Dummy_UpdateFunc(xEnt* ent, xScene* param_2, F32 param_3)
{
    if (ent->frame != NULL)
    {
        xVec3Copy(&ent->frame->oldvel, &ent->frame->vel);
        ent->frame->oldmat = ent->frame->mat;
        xRotCopy(&ent->frame->oldrot, &ent->frame->rot);
        xMat4x3Copy(&ent->frame->mat, xModelGetFrame(ent->model));
        ent->frame->mode = 0;
    }
}

void SB1Dummy_BoundFunc(xEnt* ent, xVec3* param_2)
{
    xBoundUpdate(&ent->bound);
    zGridUpdateEnt(ent);
}

void SB1Dummy_RenderFunc(xEnt* ent)
{
    xDrawSphere(&(ent->bound).sph, 0xc0006);
}

S32 SB1Dummy_TgtEventFunc(xBase* to, xBase* from, U32 toEvent, const F32* param_f, xBase* param_x)
{
    if (toEvent == 360)
    {
        sSB1_armTgtHit = (zEnt*)from;
    }
    return 1;
}

void SB1_ResetGlobalStuff();

void zNPCB_SB1::Reset()
{
    SB1_ResetGlobalStuff();
    this->zNPCCommon::Reset();
    this->attacking = 1;
    this->attack_delay = f823;

    if (this->psy_instinct)
    {
        this->psy_instinct->GoalSet(NPC_GOAL_BOSSSB1IDLE, 0);
    }
}

void zNPCB_SB1::NewTime(xScene* xscn, F32 dt)
{
    // the compiler unrolls this loop
    for (S32 i = 0; i < 2; i++)
    {
        if (sSB1_Ptr->m_armColl[i])
        {
            sSB1_Ptr->m_armColl[i]->model->Flags &= 0b1110111111111111;
        }
    }

    this->zNPCCommon::NewTime(xscn, dt);

    xDrawOBB(&sSB1_Ptr->m_bodyColl->bound.box.box, sSB1_Ptr->m_bodyColl->bound.mat);
}

F32 zNPCB_SB1::AttackTimeLeft()
{
    if (this->attacking == 0)
    {
        return f823;
    }

    return f983 - this->attack_delay;
}

void zNPCB_SB1::HoldUpDude()
{
    this->attacking = 0;
    this->attack_delay = f1008;
}

void zNPCB_SB1::ThanksImDone()
{
    this->attacking = 1;
    this->attack_delay = f983;
}

S32 SB1_CheckFeetStomp(zNPCB_SB1* sb1, S32* goal, en_trantype* trantype)
{
    xVec3* player_pos = (xVec3*)&globals.player.ent.model->Mat->pos;
    xVec3* boss_pos = (xVec3*)&sb1->model->Mat->pos;
    F32 dist = xVec3Dist2(boss_pos, player_pos);

    S32 result = 0;

    if (dist < f1019)
    {
        result = 1;
        *goal = NPC_GOAL_BOSSSB1STOMP;
        *trantype = GOAL_TRAN_SET;
    }
    else
    {
        result = 0;
    }

    return result;
}

S32 idleCB(xGoal* rawgoal, void*, en_trantype* trantype, F32, void*)
{
    zNPCB_SB1* sb1 = (zNPCB_SB1*)rawgoal->GetOwner();
    zNPCGoalBossSB1Idle* idle = (zNPCGoalBossSB1Idle*)rawgoal;

    S32 nextgoal = 0;

    if (SB1_CheckFeetStomp(sb1, &nextgoal, trantype))
    {
        return nextgoal;
    }

    if (idle->timeInGoal > f1034)
    {
        if (sb1->m_tauntTimer < f823)
        {
            nextgoal = NPC_GOAL_BOSSSB1TAUNT;
            *trantype = GOAL_TRAN_SET;
        }
        else
        {
            nextgoal = NPC_GOAL_BOSSSB1SMASH;
            *trantype = GOAL_TRAN_SET;
        }
    }

    return nextgoal;
}

S32 tauntCB(xGoal* rawgoal, void*, en_trantype* trantype, F32 dt, void*)
{
    zNPCB_SB1* sb1 = (zNPCB_SB1*)rawgoal->GetOwner();

    S32 nextgoal = 0;

    if (SB1_CheckFeetStomp(sb1, &nextgoal, trantype))
    {
        return nextgoal;
    }

    if (sb1->AnimTimeRemain(NULL) < f1043 * dt)
    {
        nextgoal = NPC_GOAL_BOSSSB1IDLE;
        *trantype = GOAL_TRAN_SET;
    }

    return nextgoal;
}

S32 stompCB(xGoal* rawgoal, void*, en_trantype* trantype, F32 dt, void*)
{
    zNPCGoalBossSB1Stomp* stomp = (zNPCGoalBossSB1Stomp*)rawgoal;
    zNPCB_SB1* sb1 = (zNPCB_SB1*)rawgoal->GetOwner();
    S32 nextgoal = 0;

    if (stomp->timeInGoal > f1053)
    {
        xVec3* player_pos = (xVec3*)&globals.player.ent.model->Mat->pos;
        xVec3* boss_pos = (xVec3*)&sb1->model->Mat->pos;
        F32 dist = xVec3Dist2(boss_pos, player_pos);

        if (dist > f1054)
        {
            if (sb1->AnimTimeRemain(NULL) < f1043 * dt)
            {
                nextgoal = NPC_GOAL_BOSSSB1IDLE;
                *trantype = GOAL_TRAN_SET;
            }
        }
    }

    return nextgoal;
}

// 91% match, just has a register scheduling issue
S32 smashCB(xGoal* rawgoal, void*, en_trantype* trantype, F32 dt, void*)
{
    zNPCGoalBossSB1Smash* smash = (zNPCGoalBossSB1Smash*)rawgoal;
    zNPCB_SB1* sb1 = (zNPCB_SB1*)rawgoal->GetOwner();

    S32 nextgoal = 0;

    if (sSB1_armTgtHit)
    {
        nextgoal = NPC_GOAL_BOSSSB1DEFLATE;
        *trantype = GOAL_TRAN_SET;
        return nextgoal;
    }

    if (SB1_CheckFeetStomp(sb1, &nextgoal, trantype))
    {
        return nextgoal;
    }

    if (smash->timeInGoal > f1065)
    {
        nextgoal = NPC_GOAL_BOSSSB1IDLE;
        *trantype = GOAL_TRAN_SET;
    }

    return nextgoal;
}

S32 deflateCB(xGoal* rawgoal, void*, en_trantype* trantype, F32 dt, void*)
{
    zNPCB_SB1* sb1 = (zNPCB_SB1*)rawgoal->GetOwner();

    S32 nextgoal = 0;

    if (sb1->AnimTimeRemain(NULL) < f1043 * dt)
    {
        nextgoal = NPC_GOAL_BOSSSB1IDLE;
        *trantype = GOAL_TRAN_SET;
    }

    return nextgoal;
}

S32 zNPCGoalBossSB1Idle::Enter(F32 dt, void* updCtxt)
{
    zNPCB_SB1* sb1 = (zNPCB_SB1*)this->GetOwner();
    this->timeInGoal = f823;
    xVec3Init(&sb1->frame->vel, f823, f823, f823);
    return this->zNPCGoalCommon::Enter(dt, updCtxt);
}

S32 zNPCGoalBossSB1Taunt::Enter(F32 dt, void* updCtxt)
{
    zNPCB_SB1* sb1 = (zNPCB_SB1*)this->GetOwner();
    this->timeInGoal = f823;
    sb1->m_tauntTimer = f983;
    return this->zNPCGoalCommon::Enter(dt, updCtxt);
}

S32 zNPCGoalBossSB1Stomp::Enter(F32 dt, void* updCtxt)
{
    zNPCB_SB1* sb1 = (zNPCB_SB1*)this->GetOwner();
    this->timeInGoal = f823;
    return this->zNPCGoalCommon::Enter(dt, updCtxt);
}

// scheduling memes preventing match
S32 zNPCGoalBossSB1Smash::Enter(F32 dt, void* updCtxt)
{
    zNPCB_SB1* sb1 = (zNPCB_SB1*)this->GetOwner();
    sSB1_armTgtHit = NULL;
    this->timeInGoal = f823;
    return this->zNPCGoalCommon::Enter(dt, updCtxt);
}

// WIP, only 32% matching
S32 zNPCGoalBossSB1Deflate::Enter(F32 dt, void* updCtxt)
{
    zNPCB_SB1* sb1 = (zNPCB_SB1*)this->GetOwner();
    this->timeInGoal = f823;

    RpGeometry* srcGeom; // r18
    RpGeometry* dstGeom; // r17
    xAnimState* deflateState; // r16

    // WIP
    // I think might be a loop the compiler unrolled, not sure though
    for (S32 i = 0; i < 2; i++)
    {
        if (sSB1_armTgtHit == sb1->m_armTgt[i])
        {
            srcGeom = sb1->m_subModels[i]->Data->geometry;
            dstGeom = sb1->m_subModels[i + 1]->Data->geometry;
            deflateState = xAnimTableGetStateID(sb1->model->Anim->Table, g_hash_bossanim[i]);
        }
    }

    this->morphVertCount = srcGeom->numVertices;
    this->modelVec = srcGeom->morphTarget->verts;
    this->modelGeom = srcGeom;
    this->targetVec = srcGeom->morphTarget->verts;

    memcpy(this->morphVertBuf, this->modelVec, this->morphVertCount * sizeof(RwV3d));

    this->morphInvTime = f822 / (deflateState->Data->Duration - f1223);

    return this->zNPCGoalCommon::Enter(dt, updCtxt);
}

void AddStompRing(zNPCB_SB1* sb1, xVec3* pos)
{
    for (S32 i = 0; i < 16; i++)
    {
        if (sb1->m_stompRing[i] == NULL)
        {
            sb1->m_stompRing[i] = zFXMuscleArmWave(pos);

            if (!sb1->m_stompRing[i])
            {
                break;
            }
            else
            {
                // set the parent to itself...???
                sb1->m_stompRing[i]->parent = &sb1->m_stompRing[i];
                break;
            }
        }
    }
}