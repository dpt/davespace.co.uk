section: arm
title: Introduction to ARM: Why Learn Assembly Language?
icon: compass
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1010
next: not-trivial
----

%% Slide
  
## Why Learn Assembly Language?

* Ideally we would never need to write assembly language.
  * Because it requires more effort to code than HLLs like C.
* But C is an abstraction: The code that you write is not what the CPU really executes.
* Sometimes compilers aren’t very good.
* They may produce unnecessary extra code which we call *slop*.
  * Slop increases size and decreases speed.
* To dispense with the slop we need to instruct the machine in its native language.

%% Remarks
  
## Remarks

Our goal is to write small, efficient, programs to run on our target platforms. We can’t always assume that compilers will make all the right choices. They make decisions on our behalf which we don’t get to know about. We need to understand what the compiler is doing and why it’s doing things in a particular way.

The C code you write is not the instructions which the CPU executes. It’s an abstraction which insulates you from the weaknesses and the strengths of the machine. We tend to forget this.

It’s also useful for knowing where you are when debugging at the low level. It’s useful because compilers aren’t infallible and can sometimes generate incorrect code. (We encountered a tool chain at Picsel which, in one instance, thought that N×10==N). Also knowledge of assembly language can help you understand the semantics of the compiler language more fully.
