section: ARM,Efficient C for ARM
title: Pointer Aliasing
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, BasicOptimisation
pageOrder: 2150
next: chains
previous: indexing
----

%% Slide

## Pointer Aliasing

* Pointers *alias* when they point to the same address.
  * Writing via one pointer will change the value read through another.
* The compiler often doesn’t know which pointers alias.
  * The compiler must assume that any write through a pointer may affect the value read from any another pointer!
  * This can significantly reduce code efficiency.

%% Examples

## Examples

``` c
void timers1(int *t1, int *t2, int *step)
{
  *t1 += *step;
  *t2 += *step;
}
```

``` arm
timers1 LDR r3,[r0]   ; R3 = *t1
        LDR r12,[r2]  ; R12 = *step
        ADD r3,r3,r12 ; R3 += R12
        STR r3,[r0]   ; *t1 = R3
        LDR r0,[r1]   ; R0 = *t2
        LDR r2,[r2]   ; R2 = *step  *** step loaded again
        ADD r0,r0,r2  ; R0 += R2
        STR r0,[r1]   ; *t2 = R0
        MOV pc,r14
```

You’d expect `*step` to be pulled from memory once and used twice. That does not happen.

Once rewritten to cache `*step` in a local variable, the redundant load is eliminated:

``` c
void timers2(int *t1, int *t2, int *step)
{
  int s = *step;
  *t1 += s;
  *t2 += s;
}
```

``` arm
timers2 LDR r2,[r2]  ; R2 = *step
        LDR r3,[r0]  ; R3 = *t1
        ADD r3,r3,r2 ; R3 += R2
        STR r3,[r0]  ; *t1 = R3
        LDR r0,[r1]  ; R0 = *t2
        ADD r0,r0,r2 ; R0 += R2
        STR r0,[r1]  ; *t2 = R0
        MOV pc,r14
```

%% Remarks

## Remarks

C99’s `restrict` qualifier goes some way towards mitigating the effects of pointer aliasing. [Understanding strict aliasing](http://cellperformance.beyond3d.com/articles/2006/06/understanding-strict-aliasing.html).

This is based on section 5.6 of [ARM System Developer’s Guide](references.html#asdg).

