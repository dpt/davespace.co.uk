section: ARM,Introduction to ARM
title: Operand2
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1130
next: immediates
previous: barrel-shifter
----

%% Slide

## Operand2

*Operand2* is the flexible second operand to most instructions. It can take one of three different forms:

* An *immediate value*
  * An 8-bit number rotated right by an even number of places.
* A register shifted by value
  * A 5-bit unsigned integer shift.
* A register shifted by register
  * The bottom 8 bits of a register.

%% Examples

## Examples of Operand2

Immediate values

``` arm
MOV r0, #42                 ; Move the value 42 into R0
ORR r1, r1, #0xFF00         ; OR the value 0xFF00 with R1
```

Registers shifted by values

``` arm
MOV r2, r2, LSR #1          ; Shift R2 right by one bit
RSB r10, r5, r14, ASR #14   ; Shift R14 right by 14 bits while sign extending, then subtract R5 from that. Put the result in R10. (RSB = Reverse Subtract)
```

Registers shifted by registers

``` arm
BIC r11, r11, r1, LSL r0    ; Take R1 and shift it left by R0, then use that as a mask to clear bits in R11. Put the result in R11
CMP r9, r8, ROR r0          ; Take R8 and rotate it right by R0, then compare that with R9. The result is the processor flags
```

