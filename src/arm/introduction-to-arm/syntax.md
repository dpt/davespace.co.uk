section: ARM,Introduction to ARM
title: Instruction Syntax
icon: compass
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1060
next: organisation
previous: pc
----

%% Slide
  
## Instruction Syntax

<div class="format"><code>&lt;operation&gt;{cond}{flags} Rd,Rn,Operand2</code></div>

* `<operation>`
  * A three-letter mnemonic, e.g. `MOV` or `ADD`.
* `{cond}`
  * An optional two-letter condition code, e.g. `EQ` or `CS`.
* `{flags}`
  * An optional additional flags. e.g. `S`.
* `Rd`
  * The destination register.
* `Rn`
  * The first source register.
* `Operand2`
  * A flexible second operand.
  
%% Remarks
  
## Remarks

This is the *general* form of the arithmetic and logical instructions. Many instructions have a similar syntax to this, but are not identical.

In the syntax line, curly brackets indicate optional parts.

Leftmost register `Rd` is the destination.

Instructions are generally single-cycle (except write to PC and register-controlled shift).

There is a [revised](http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0204i/Cjagjjbc.html) form of the assembly language, which ARM have recently introduced, called UAL (Unified Assembler Language). Among many other changes this allows the condition code to go after the flags.
