section: ARM,Efficient C for ARM
title: Function Calls
icon: microchip
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, TargetedOptimisation
pageOrder: 2260
next: smallfunc
previous: regalloc
----

%% Slide

## Function Calls

First four arguments to a function are passed in R0-R3.

The remainder of the arguments are passed on the stack.

* Therefore, functions taking four or fewer arguments avoid the stack, which allows for greater efficiency.

Almost always more efficient to group subsequent args together and pass them together as a `struct`.

%% Remarks

## Remarks

This is from section 5.5 of ARM System Developer’s Guide.

`long long` / `double` use two registers.

The benefit is not on the callee side, but on the caller side where it will have to perform fewer register setups and less register rearrangement.
