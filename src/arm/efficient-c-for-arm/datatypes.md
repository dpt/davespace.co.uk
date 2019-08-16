section: ARM,Efficient C for ARM
title: C Data Types
icon: microchip
date: 2012-03-03
tags: ARM, EfficientC, Slide, TargetedOptimisation
pageOrder: 2190
next: memaccess
previous: unrolling
----

%% Slide

## C Data Types

Certain C data types are more efficient to use for local variables than others.

* ARM has 32-bit wide registers and 32-bit data processing instructions.

Therefore the machine’s natural word type, `int`, is 32-bit.

C Data Type | Implementation
------------|-----------------
`char`      | unsigned 8-bit byte
`short`     | signed 16-bit halfword
`int`       | signed 32-bit word
`long`      | signed 32-bit word
`long long` | signed 64-bit double word
