section: ARM,Efficient C for ARM
title: Division and Modulus
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide
pageOrder: 2070
next: unaligned
previous: fp
----

%% Slide

## Division

Like floating point, division is also emulated.

It’s implemented by two runtime library functions. In ARM’s tools they’re called:

* `__rt_sdiv` for signed values.
* `__rt_udiv` for unsigned values.

Slow:

* 10-100× slower than equivalent shift operations (20-140 cycles) depending on the values.

It’s not always so bad for divisions by a constant:

* Often optimised away by the compiler.
* If you divide by a power of two the compiler may be able to emit a shift instead.

Possible solutions:

* Multiply by a fixed-point reciprocal then shift.
* Avoid where possible by algebraic substitution.
  * e.g. rewrite (x ÷ y) > z as x > (z × y)
* Use unsigned operands to avoid sign fix-up operations.
* Avoid modulo with a wrap-around counter.
* Use lookup tables for small problems.

## Modulus

Modulus is implemented by the same routine as division.

* The routine produces both results simultaneously.
* One or the other can be computed for free.
