section: ARM,Introduction to ARM
title: Compare Instructions
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
pageOrder: 1110
next: barrel-shifter
previous: logical
----

%% Slide
  
## Compare Instructions

<div class="format"><code>&lt;operation&gt;{cond} Rn,Operand2</code></div>

`<operation>`

* `CMP` – *compare*
  * Flags set to result of (Rn − Operand2).
* `CMN` – *compare negative*
  * Flags set to result of (Rn + Operand2).
* `TST` – *bitwise test*
  * Flags set to result of (Rn AND Operand2).
* `TEQ` – *test equivalence*
  * Flags set to result of (Rn EOR Operand2).

Comparisons produce no results – they just set condition codes. Ordinary instructions will also set condition codes if the “S” bit is set. The “S” bit is implied for comparison instructions.

%% Examples
  
## Examples of Compare Instructions

* `CMP r0, #42`
  * Compare R0 to 42.
* `CMN r2, #42`
  * Compare R2 to -42.
* `TST r11, #1`
  * Test bit zero.
* `TEQ r8, r9`
  * Test R8 equals R9.
* `SUBS r1, r0, #42`
  * Compare R0 to 42, with result.

%% Remarks
  
## Remarks

* `CMP` is like `SUB`.
* `CMN` is like `ADD` – subtract of a negative number is the same as add.
* `TST` is like `AND`.
* `TEQ` is like `EOR` – exclusive or of identical numbers gives result of zero.
