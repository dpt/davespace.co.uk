section: ARM,Efficient C for ARM
title: Floating Point
icon: microchip
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide
pageOrder: 2060
next: division
previous: slow
----

%% Slide

## Floating Point

Floating Point is usually emulated on ARM systems.

* Slow.
  * 50-300× slower than equivalent integer ops.
  * Depending on library, environment.

Possible solution:

* Fixed point maths.
  * Requires more thought.
  * Consequently more error prone.

%% Remarks

## Remarks

Is this the most fundamental thing?

Floating point is therefore slow and should be avoided unless you’re dealing with one special case. This applies even to Java.

http://en.wikibooks.org/wiki/Embedded_Systems/Embedded_System_Basics/Fixed-Point_Arithmetic
