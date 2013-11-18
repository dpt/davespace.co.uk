section: arm
title: Introduction to ARM: Architecture 4
icon: compass
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1360
next: arm-arch5
previous: arm-arch123
----

%% Slide

## Architecture 4

* v4 is the oldest supported architecture today. It added:
  * Load/store instructions for signed and unsigned halfwords and bytes.
  * `LDRH`, `LDRSH`, `LDRSB`.
  * System mode – privileged mode using user registers.
  * 26-bit addressing no longer supported.
* v4T added:
  * Thumb mode.

%% Remarks

## Remarks

This is the first architecture to have a full formal definition.

* Ops which yielded PC+12 in earlier ARMs are declared UNPREDICTABLE.
* Reserves some of the SWI space for architecturally-defined operations.
