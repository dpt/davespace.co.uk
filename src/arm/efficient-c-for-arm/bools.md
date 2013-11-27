section: ARM,Efficient C for ARM
title: Bools
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, BasicOptimisation
pageOrder: 2090
next: bitfields
previous: unaligned
----

%% Slide

## Bools

Problem:

* A `bool` passed to a function eats up a whole register by itself.
* Passing around multiple `bool`s becomes very wasteful.
* There are usually 31 other spare bits which can be used.

Solution:

* Convert multiple `bool`s into a single `unsigned int`,
* and create associated flag definitions.

This reduces register pressure and allows for convenient multiple-bool tests to
be carried out with a single logical operation.

%% Examples

## Example
``` c
typedef unsigned int bool;

bool isEnemy(bool hasLasers,
             bool hasMissiles,
             bool hasBomb,
             bool hasECM)
{
  return hasLasers   ||
         hasMissiles ||
         hasBomb     ||
         hasECM;
}
```

``` arm
isEnemy ORR   r0,r0,r1
        ORR   r0,r0,r2
        ORRS  r0,r0,r3
        MOVNE r0,#1
        MOV   pc,lr
```

``` c
typedef unsigned int ShipFlags;

#define ShipFlags_HasLasers   (1u << 0)
#define ShipFlags_HasMissiles (1u << 1)
#define ShipFlags_HasBomb     (1u << 2)
#define ShipFlags_HasECM      (1u << 3)

bool isEnemy2(ShipFlags flags)
{
  ShipFlags want = ShipFlags_HasLasers   |
                   ShipFlags_HasMissiles |
                   ShipFlags_HasBomb     |
                   ShipFlags_HasECM;

  return (flags & want) != 0;
}
```

``` arm
isEnemy2 ANDS  r0,r0,#0xf
         MOVNE r0,#1
         MOV   pc,lr
```
