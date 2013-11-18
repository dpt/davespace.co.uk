section: arm
title: Introduction to ARM: Instruction Sets
icon: compass
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1030
next: registers
previous: not-trivial
----

%% Slide
  
## Instruction Sets

Modern ARM processors have several instruction sets:

* The fully-featured 32-bit ARM instruction set,
* The more restricted, but space efficient, 16-bit *Thumb* instruction set,
* The newer mixed 16/32-bit *Thumb-2* instruction set,
* *Jazelle DBX* for Java byte codes,
* The *NEON* 64/128-bit SIMD instruction set,
* The *VFP* vector floating point instruction set.

For the purposes of this course we are only interested in the ARM and Thumb instruction sets.
  
%% Remarks
  
## Remarks

Thumb instructions are a 16-bit compressed form of the most commonly used ARM instructions. Instructions are (can be) dynamically decompressed in the instruction pipeline. Thumb increases code density (commonly by 25%) at the cost of reduced execution speed.

Java bytecodes are 8-bit instructions designed to be architecture-independent. [Jazelle DBX](http://en.wikipedia.org/wiki/Jazelle) transparently executes most bytecodes in hardware and some in highly optimised ARM code. This is due to a trade-off between hardware complexity (power consumption and silicon area) and speed.

Thumb-2 is the progression of Thumb (strictly it is Thumb v3). It improves performance whilst keeping the code density tight by allowing a mixture of 16- and 32-bit instructions.
