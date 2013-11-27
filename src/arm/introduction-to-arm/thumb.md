section: ARM,Introduction to ARM
title: Thumb
icon: compass
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1270
next: interworking
previous: task-two-answers
----

%% Slide
  
## Thumb

Thumb is a subset of the ARM instruction set encoded in 16-bit wide instructions.

* Requires 70% of the space of ARM code.
* Uses 40% more instructions than equivalent ARM code.

A CPU has Thumb support if it has a T in its name, or it is architecture v6 or later.

* With 32-bit memory:
  * ARM code is 40% faster than Thumb code.
* With 16-bit memory:
  * Thumb code is 45% faster than ARM code.

Uses 30% less external memory power than ARM code.

%% Remarks
  
## Remarks

The slide quotes ARM’s “ideal” values. Take with a pinch of salt.
  
%% Slide
  
## Limitations

Thumb is not a complete architecture: you can’t have a Thumb-only CPU.

Some of the limitations of Thumb mode include:

* Conditional execution only exists for branch instructions.
* Data processing ops use a two-address format, as opposed to ARM’s three-address format.
* Its instruction encodings are less regular than ARM’s.

Thumb uses the same register set as ARM — but only R0-R7.
  
%% Remarks
  
## Remarks

Whereas R13’s role as the stack pointer is a convention in ARM mode, in Thumb mode it’s more hard-wired.
