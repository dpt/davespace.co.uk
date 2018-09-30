section: ARM,Efficient C for ARM
title: Unsigned Ranges
icon: microchip
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, TargetedOptimisation
pageOrder: 2290
next: baseptr
previous: biasing
----

%% Slide

## Unsigned Ranges

When testing for a value within a range we can apply the *unsigned range optimisation*:

* Shift the range down so its minimum is zero.
* Cast to `unsigned`.
* ⇒ Any negative values become large positive values.

This means we can do a single test rather than two.

Eliminates branching.

%% Examples

## Examples

``` c
int insideRange1(int v, int min, int max)
{
  return v >= min && v < max;
}
```

``` arm
insideRange1 CMP   r0,r1
             BLT   |L1.20|
             CMP   r0,r2
             MOVLT r0,#1
             MOVLT pc,lr
|L1.20|
             MOV   r0,#0
             MOV   pc,lr
```

``` c
int insideRange2(int v, int min, int max)
{
  return (unsigned) (v - min) < (max - min);
}
```

``` arm
insideRange2 SUB   r0,r0,r1
             SUB   r1,r2,r1
             CMP   r0,r1
             MOVCS r0,#0
             MOVCC r0,#1
             MOV   pc,lr
```

%% Remarks

## Remarks

In some cases the compiler can make this transformation itself.

It’s now branchless but mightn’t terminate as early.

This is especially beneficial when ‘min’ is zero. Of course this becomes even more beneficial when testing 2D and 3D ranges.
