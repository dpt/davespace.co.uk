section: ARM,Introduction to ARM
title: Thumb Example
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
pageOrder: 1290
next: thumb-2
previous: interworking
----

%% Slide
  
## Thumb Example

Here’s the ‘mystery’ routine from earlier rewritten in Thumb assembly language.

``` arm
mystery MOV r1, r0
        SUB r1, #'A'
        CMP r1, #'Z' - 'A'
        BHI exit
        ADD r0, #'a' - 'A'
exit
        BX  lr
```

There are more instructions, but the instructions are half the size:

* In ARM it’s 5 × 4 bytes = 20 bytes.
* In Thumb it’s 6 × 2 bytes = 12 bytes – a 40% saving.
  
%% Remarks
  
## Remarks

Note that not all Thumb instructions are always 16-bit. In particular some branch instructions are encoded as a pair of 16-bit instructions (high and low halves).
