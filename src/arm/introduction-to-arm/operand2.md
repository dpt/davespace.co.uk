section: arm
title: Introduction to ARM: Operand2
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

* *Immediate value*.
  * An 8-bit number rotated right by an even number of places.
* Register shifted by value.
  * A 5-bit unsigned integer shift.
* Register shifted by register.
  * The bottom 8 bits of a register.
  
%% Examples
  
## Examples

* Immediate values:
  * `MOV r0, #42`
  * `ORR r1, r1, #0xFF00`
* Registers shifted by values:
  * `MOV r2, r2, LSR #1`
  * `RSB r10, r5, r14, ASR #14`
* Registers shifted by registers:
  * `BIC r11, r11, r1, LSL r0`
  * `CMP r9, r8, ROR r0`
