section: ARM,Introduction to ARM
title: Arithmetic Instructions
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
pageOrder: 1090
next: logical
previous: movement
----

%% Slide

## Arithmetic Instructions

<div class="format"><code>&lt;operation&gt;{cond}{S} Rd,Rn,Operand2</code></div>

`<operation>`

* `ADD` – Add
  * Rd := Rn + Operand2
* `ADC` – Add with Carry
  * Rd := Rn + Operand2 + Carry
* `SUB` – Subtract
  * Rd := Rn − Operand2
* `SBC` – Subtract with Carry
  * Rd := Rn − Operand2 − NOT(Carry)
* `RSB` – Reverse Subtract
  * Rd := Operand2 − Rn
* `RSC` – Reverse Subtract with Carry
  * Rd := Operand2 − Rn − NOT(Carry)

%% Examples

## Examples of Arithmetic Instructions

* `ADD r0, r1, r2`
  * R0 = R1 + R2
* `SUB r5, r3, #10`
  * R5 = R3 − 10
* `RSB r2, r5, #0xFF00`
  * R2 = 0xFF00 − R5

%% Remarks

## Remarks

`RSB` and `RSC` subtract in reverse order (e.g. y - x not x - y).

Multiplication has a different format and is described later.

There is no divide instruction – the compiler uses a run-time library function or shifts to perform division.
