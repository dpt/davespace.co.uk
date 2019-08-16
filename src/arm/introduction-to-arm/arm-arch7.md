section: ARM,Introduction to ARM
title: Architecture 7
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
pageOrder: 1390
next: arm-cores
previous: arm-arch6
----

%% Slide
  
## Architecture 7

* v7A, v7R
  * Dynamic Compiler Support.
  * Execution Environment (Thumb-2EE).
  * VFP v3 (Vector Floating Point).
  * NEON advanced SIMD.
  * Thumb-2 mandated.
* v7M
  * Minimalist variant for embedded uses.
  * Thumb-2 only.

%% Remarks
  
## Remarks

Only the newest tools currently target v7. e.g. [CodeSourcery’s GCC ARM toolchain](http://www.codesourcery.com/sgpp/lite/arm).

> [NEON technology](http://www.arm.com/products/processors/technologies/neon.php) is a 64/128-bit hybrid SIMD architecture developed by ARM to accelerate the performance of multimedia and signal processing applications [...].

> The NEON architecture provides at least 3x the performance of ARMv5 and 2x the performance of ARMv6 SIMD on a range of media and DSP applications.
