section: arm
title: Efficient C for ARM: Pointer Chains
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, BasicOptimisation
pageOrder: 2160
next: sentinels
previous: aliasing
----

%% Slide

## Pointer Chains

Pointer chains are frequently used to access data in structures.

* Subject to [pointer aliasing](/arm/efficient-c-for-arm/aliasing.html).

%% Examples

## Examples

This code must reload `o->pos` after each assignment.

``` c
typedef struct { int x,y,z; } Point3;
typedef struct { Point3 *pos, *dir; } Object;

void setPos1(Object *o)
{
  o->pos->x = 0;
  o->pos->y = 0;
  o->pos->z = 0;
}
```

``` arm
setPos1 LDR r2,[r0,#0]
        MOV r1,#0
        STR r1,[r2,#0]
        LDR r2,[r0,#0] ; *** redundant load
        STR r1,[r2,#4]
        LDR r0,[r0,#0]
        STR r1,[r0,#8]
        MOV pc,lr
```

This improved version caches `o->pos` in a local variable.

Another possibility is to fold `Point3` into its parent `Object` structure.

``` c
typedef struct { int x,y,z; } Point3;
typedef struct { Point3 *pos, *dir; } Object;

void setPos2(Object *o)
{
  Point3 *pos = o->pos;
  pos->x = 0;
  pos->y = 0;
  pos->z = 0;
}
```

``` arm
setPos2 LDR r0,[r0,#0]
        MOV r1,#0
        STR r1,[r0,#0]
        STR r1,[r0,#4]
        STR r1,[r0,#8]
        MOV pc,lr
```

%% Remarks

## Remarks

To put it another way, the compiler does not know that `o->pos->x` is not an
alias for `o->pos`.

This is from ARM Application Note 34, Section 8.2.3. (Now withdrawn? I can no
longer find it online.)
