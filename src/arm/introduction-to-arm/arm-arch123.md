section: ARM,Introduction to ARM
title: Early Architectures
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1350
next: arm-arch4
previous: arm-arch
----

%% Slide
  
## Early Architectures

* v1
  * Developed at Acorn, Cambridge, UK. Between October 1983 and April 1985.
  * Fewer than 25,000 transistors.
  * No multiply or coprocessor instructions.
  * 26-bit addressing.
* v2
  * 30,000 transistors.
  * 32-bit multiplier instructions (`MUL` & `MLA`).
* v2a
  * First ARM with an on-chip cache (ARM3).
* v3
  * 32-bit addressing.
  * Undefined Instruction and Abort modes (allows virtual memory).
* v3M
  * Signed and unsigned long multiply and multiply-accumulate instructions:
    `SMULL`, `SMLAL`, `UMULL`, `UMLAL`.

%% Remarks
  
## Remarks

We’ll now discuss the various architecture versions that ARM processors come in. This shows how the architecture has grown since it was invented in the early 80s.

These v1 and v2 architectures pre-date ARM Ltd.

Age: ARM may be somewhat older than you were expecting! The first prototype was fired up on 26th April 1985.

No multiply: Consider that `MUL` is iterative so conflicts with RISC philosophy: some other RISC architectures omit multiply instructions.

* Other differences from later ARMs include:
  * R8+R9 not banked in IRQ mode.
  * No `LDR`/`STR` with register-specified shifts.

Sales: The only commercial product made from this version was the ARM second processor board for the BBC Micro. This was only sold in small numbers for specialist needs but established the ARM as the world’s first commercial RISC processor.

> The first ARM-based product was the ARM Development System, a second processor for the BBC Master. It cost around £4,000 to buy, and included the ARM processor and three support chips, 4 Mb of RAM and a set of development tools with an enhanced version of BBC BASIC.

Acorn also used this ARM internally in Archimedes prototypes.
