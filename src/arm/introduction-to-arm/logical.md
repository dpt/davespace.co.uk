section: arm
title: Introduction to ARM: Logical Instructions
icon: compass
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1100
next: compare
previous: arithmetic
----

%% Slide
  
## Logical Instructions

<div class="format"><code>&lt;operation&gt;{cond}{S} Rd,Rn,Operand2</code></div>

`<operation>`

* `AND` – *logical AND*
  * Rd := Rn AND Operand2
* `EOR` – *Exclusive OR*
  * Rd := Rn EOR Operand2
* `ORR` – *logical OR*
  * Rd := Rn OR Operand2
* `BIC` – *Bitwise Clear*
  * Rd := Rn AND NOT Operand2

%% Examples
  
## Examples

* `AND r8, r7, r2`
  * R8 = R7 & R2
* `ORR r11, r11, #1`
  * R11 |= 1
* `BIC r11, r11, #1`
  * R11 &= ~1
* `EOR r11, r11, #1`
  * R11 ^= 1
