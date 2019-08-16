section: ARM,Efficient C for ARM
title: Stuff That’s Slow on ARM
icon: microchip
date: 2012-03-03
tags: ARM, EfficientC, Slide
pageOrder: 2050
next: fp
previous: profilers
----

%% Slide

## Stuff That’s Slow on ARM

* Floating Point
  * Most ARMs don’t have floating point units.
* Division
  * ARM has no native divide instruction.
* Unaligned data access
  * ARM prefers word-aligned data.
