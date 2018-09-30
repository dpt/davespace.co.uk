section: ARM,Introduction to ARM
title: Architecture 6
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1380
next: arm-arch7
previous: arm-arch5
----

%% Slide
  
## Architecture 6

* v6
  * Mixed endian data handling: `SETEND`, `REV`, `REV16`, `REVSH`.
  * 60+ new SIMD instructions: `SMUSD`, `SMUADX`, `USAD8`, `USADA8`.
  * Unaligned data handling.
  * New multiprocessing instructions: `LDREX`, `STREX`.
* v6T2
  * Thumb-2.

%% Remarks
  
## Remarks

Mandates the “TEJ” features for this and all subsequent architectures.

`USADxx`: Sum of absolute differences.
