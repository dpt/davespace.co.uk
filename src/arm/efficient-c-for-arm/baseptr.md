section: ARM,Efficient C for ARM
title: Base Pointer Optimisation
icon: microchip
date: 2012-03-03
tags: ARM, EfficientC, TargetedOptimisation
pageOrder: 2300
next: references
previous: unsignedrange
----

%% Slide

## Base Pointer Optimisation

Grouping global or `static` variables together into a `struct` allows the compiler to refer to them through a single base pointer.

Instead of having multiple variables kept at multiple locations within the binary, this turns them into a single "large" variable accessed through one known offset.

%% Remarks

## Remarks

http://www.arm.com/support/faqdev/1490.html

http://www.arm.com/pdfs/DAI0036B_c_globaldata.pdf
