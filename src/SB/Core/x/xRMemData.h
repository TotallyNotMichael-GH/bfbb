#ifndef XRMEMDATA_H
#define XRMEMDATA_H

#include "xBase.h"

#include <new>

struct RyzMemGrow
{
    S32 flg_grow;
    S32 amt;
    char* ptr;
    xBase* user;
    S32 amt_last;
    char* ptr_last;
    xBase* user_last;

    RyzMemGrow* Init(xBase* growuser);
    RyzMemGrow* Resume(xBase*);
    void Done();
    S32 IsEnabled();
};

struct RyzMemData
{
    void* operator new(size_t amt, S32, RyzMemGrow* growCtxt);
    void operator delete(void*);
};

#endif
