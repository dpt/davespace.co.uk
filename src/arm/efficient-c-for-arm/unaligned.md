section: ARM,Efficient C for ARM
title: Unaligned Data Access
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide
pageOrder: 2080
next: bools
previous: division
----

%% Slide

## Unaligned Data Access

* ARM favours 32-bit aligned addresses.
* Unaligned values have to be pulled from memory a byte at a time and reformed.

%% Examples

## Examples

A load from a guaranteed alignment:

``` arm
LDR Rd,[Ra]
```

A load from an unspecified alignment:

``` arm
LDRB Rd,[Ra,#0]
LDRB Rt,[Ra,#1]
ORR  Rd,Rd,Rt,LSL #8
LDRB Rt,[Ra,#2]
ORR  Rd,Rd,Rt,LSL #16
LDRB Rt,[Ra,#3]
ORR  Rd,Rd,Rt,LSL #24
```

Each byte must be individually fetched and merged into the result.
