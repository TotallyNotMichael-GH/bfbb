#include "xRMemData.h"
#include "xMemMgr.h"

#include <types.h>
#include <string.h>

#if 0
// So close to matching. There seems to be extra ors and I do not know why they show up.
void* RyzMemGrow::operator new(size_t size, U32 amt, RyzMemGrow* growCtxt)
{
    S32 dogrow = true;
    if (growCtxt == NULL)
    {
        dogrow = false;
    }
    else if (growCtxt->IsEnabled() == 0)
    {
        dogrow = false;
    }
    if (dogrow)
    {
        xMemGrowAllocSize(size);
    }
    else
    {
        xMemAllocSize(size);
    }
    void* mem;
    memset(mem, 0, 4);
    return mem;
}

#endif

void RyzMemData::operator delete(void* p)
{
}

RyzMemGrow* RyzMemGrow::Init(xBase* growuser)
{
    char* dat;
    if (this->ptr != NULL)
    {
        return this;
    }
    this->amt_last = 0;
    this->ptr_last = NULL;
    this->user_last = NULL;
    this->amt = 0x20;
    dat = (char*)xMemAllocSize(this->amt);
    this->ptr = dat;
    this->user = growuser;
    this->flg_grow = 1;
    return this;
}

RyzMemGrow* RyzMemGrow::Resume(xBase*)
{
    this->amt = this->amt_last;
    this->ptr = this->ptr_last;
    this->user = this->user_last;
    this->flg_grow = 0b11;
    return this;
}

void RyzMemGrow::Done()
{
    this->amt_last = this->amt;
    this->ptr_last = this->ptr;
    this->user_last = this->user;
    this->amt = 0;
    this->ptr = NULL;
    this->user = NULL;
    this->flg_grow = 0;
}

S32 RyzMemGrow::IsEnabled()
{
    return this->flg_grow & 1;
}
