section: ARM,Efficient C for ARM
title: Bitfields
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, BasicOptimisation
pageOrder: 2100
next: padding
previous: bools
----

%% Slide

## Bitfields

* Mini structure members.
* Subject to pointer aliasing.
* Layout not guaranteed.

On the whole, you’re better off using a flags word.

%% Examples

## Example

``` c
typedef struct {
  unsigned int hasLasers   : 1;
  unsigned int hasMissiles : 1;
  unsigned int hasBomb     : 1;
  unsigned int hasECM      : 1;
} ShipData;

ShipFlags getShipFlags(const ShipData *d)
{
  return (d->hasLasers   << 0) |
         (d->hasMissiles << 1) |
         (d->hasBomb     << 2) |
         (d->hasECM      << 3);
}
```

``` arm
getShipFlags LDR r0,[r0,#0]
             AND r0,r0,#0xf
             MOV pc,lr
```

Becomes:

``` c
typedef struct {
  ShipFlags flags;
} ShipData2;

ShipFlags getShipFlags2(const ShipData2 *d)
{
  return d->flags;
}
```

``` arm
getShipFlags2 LDR r0,[r0,#0]
              MOV pc,lr
```
