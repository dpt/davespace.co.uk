section: arm
title: Efficient C for ARM: Loop Unrolling
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, BasicOptimisation
pageOrder: 2180
next: datatypes
previous: sentinels
----

%% Slide

## Loop Unrolling

Small loops can be *unrolled*.

* Inner part repeated multiple times.
  * Higher performance.
  * At the expense of increased code size.

When unrolled:

* Loop counter needs to be updated less often.
* Fewer branches are executed.

If small enough the loop can be completely unrolled.

* All test-and-branch overhead vanishes.

%% Examples

## Example

Before unrolling:

``` c
int countbits1(unsigned int N)
{
  int nbits = 0;
  while (N) {
    if (N & 1) nbits++;
    N >>= 1;
  }
  return nbits;
}
```

9 instructions → 6 cycles/bit.

After unrolling:

``` c
int countbits2(unsigned int N)
{
  int nbits = 0;
  while (N) {
    if (N & 1) nbits++;
    if (N & 2) nbits++;
    if (N & 4) nbits++;
    if (N & 8) nbits++;
    N >>= 4;
  }
  return nbits;
}
```

15 instructions → 3 cycles/bit.

%% Remarks

## Remarks

Related:

* [Loop unwinding](http://en.wikipedia.org/wiki/Loop_unwinding) on Wikipedia.
* [Duff’s Device](http://en.wikipedia.org/wiki/Duff's_device) on Wikipedia.
