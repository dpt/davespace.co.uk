section: ARM,Introduction to ARM
title: Operand2
icon: compass
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

## Examples

### Immediate values

  * `MOV r0, #42`
    * *move the value 42 into register R0*
  * `ORR r1, r1, #0xFF00`
    * *OR the value 0xFF00 with register R1 then put the result in register R1*

### Registers shifted by values

  * `MOV r2, r2, LSR #1`
    * *shift register R2 right by a bit*
  * `RSB r10, r5, r14, ASR #14`
    * *take register 14 and shift it right by 14 bits while sign extending, then subtract register R5 from that. put the result in register R10* (reverse subtract)

### Registers shifted by registers

  * `BIC r11, r11, r1, LSL r0`
    * *take register R1 and shift it left by register R0, then use that as a mask to clear bits in register R11. put the result in register R11*
  * `CMP r9, r8, ROR r0`
    * *take register R8 and rotate it right by register R0, then compare that with register R9. the result is the processor flags*

