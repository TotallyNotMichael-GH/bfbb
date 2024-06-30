#ifndef XINI_H
#define XINI_H

#include <types.h>

struct xIniValue
{
    int8* tok;
    int8* val;
};

struct xIniSection
{
    int8* sec;
    int32 first;
    int32 count;
};

struct xIniFile
{
    int32 NumValues;
    int32 NumSections;
    xIniValue* Values;
    xIniSection* Sections;
    void* mem;
    int8 name[256];
    int8 pathname[256];
};

xIniFile* xIniParse(char* buf, int32 len);
void xIniDestroy(xIniFile* ini);
int32 xIniGetIndex(xIniFile* ini, int8* tok);
int32 xIniGetInt(xIniFile* ini, int8* tok, int32 def);
float32 xIniGetFloat(xIniFile* ini, int8* tok, float32 def);
int8* xIniGetString(xIniFile* ini, int8* tok, int8* def);

#endif
