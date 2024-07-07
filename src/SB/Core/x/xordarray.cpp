#include "xordarray.h"
#include "xMemMgr.h"

#include <types.h>

extern F32 lbl_803CCEE8; // 0.95f
extern F32 lbl_803CCEF0; // 176f

#if 0
// Can't figure out how to match the bottom part due to the weird float stuff going on.
void XOrdInit(st_XORDEREDARRAY* array, S32 size, S32 tempAlloc)
{
    U32 cnt = 1;
    if (size >= 1)
    {
        cnt = size;
    }
    if (tempAlloc)
    {
        array->list = (void**)xMemPushTemp(cnt << 2);
    }
    else
    {
        array->list = (void**)xMemAlloc(cnt << 2);
    }
    array->cnt = 0;
    array->max = cnt;
    array->warnlvl = lbl_803CCEE8 * (cnt ^ 0x80000000);
    if (array->warnlvl == array->max)
    {
        cnt = array->max - 1;
        array->warnlvl = cnt & ~((S32)cnt >> 0x1f);
    }
}

#endif

void XOrdReset(st_XORDEREDARRAY* array)
{
    array->cnt = 0;
}

void XOrdDone(st_XORDEREDARRAY* array, S32 wasTempAlloc)
{
    if (array->max != 0 && wasTempAlloc != 0)
    {
        xMemPopTemp(array->list);
    }
    array->list = NULL;
    array->cnt = 0;
    array->max = 0;
    array->warnlvl = 0;
}

void XOrdAppend(st_XORDEREDARRAY* array, void* elt)
{
    if (array->cnt >= array->max)
    {
        return;
    }
    array->list[array->cnt++] = elt;
}

#if 0

void XOrdInsert(st_XORDEREDARRAY* array, void* elt, XOrdCompareCallback compare)
{
    if (array->cnt < array->max)
    {
        array->cnt++;
        S32 pos = array->cnt - 1;
        void* currElement = pos * sizeof(void*);
        while (pos > 0)
        {
            S32 score = compare(array->list + currElement - sizeof(void*), elt);
            if (score <= 0)
            {
                array->list[pos] = elt;
                return;
            }
            pos--;
            void* tmp = (void*)(array->list + currElement);
            currElement--;
            *tmp = tmp[-1];
        }
        *array->list = elt;
    }
}

#endif

#if 0
// WIP. The comparisons are probably wrong.
void* XOrdRemove(st_XORDEREDARRAY* array, void* elt, S32 index)
{
    if (elt == NULL)
    {
        if (index < 0)
        {
            return NULL;
        }
        else if (index >= array->max)
        {
            return NULL;
        }
    }
    if (index >= 0)
    {
        if (index < array->max)
        {
            elt = array->list[index]
        }
        else
        {
            if (elt != NULL)
            {
                // LOOP.
            }
            else
            {
                if (index < 0)
                {
                    return NULL;
                }
                else
                {
                    // ANOTHER LOOP :>
                    return elt;
                }
            }
        }
    }
    return NULL;
}

#endif

#if 0
S32 XOrdLookup(st_XORDEREDARRAY* array, const void* key, XOrdTestCallback test)
{
    S32 v, index, rightBound, leftBound;
    leftBound = 0;
    index = array->cnt;
    do
    {
        rightBound = index;
        if (rightBound <= leftBound)
        {
            return -1;
        }
        index = (leftBound + rightBound) / 2;
        v = test(key, array->list[index]);
        if (v == 0)
            break;
        if (0 < v)
        {
            leftBound = index + 1;
            index = rightBound;
        }
    } while (true);
    return index;
}

#endif

#if 0
void XOrdSort(st_XORDEREDARRAY* array, S32 (*test)(void*, void*))
{
    void** list = array->list;
    S32 num = 1;
    while (num <= cnt)
    {
        num = num * 3 + 1;
    }
    for (;;)
    {
        if (num == 1)
        {
            return;
        }
        num = num / 3 + (num >> 0x1f);
        num = num - (num >> 0x1f);
        S32 numPos = num * sizeof(void*);
        void** currItem = list + num;
        S32 i = num;
        while (i < cnt)
        {
            // TODO!!!
        }
    }
}

#endif
