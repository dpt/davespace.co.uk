section: ARM,Introduction to ARM
title: Thumb-2
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
pageOrder: 1300
next: arm-ltd
previous: thumb-example
----

%% Slide
  
## Thumb-2

* Thumb-2 is the newest version of Thumb.
* It’s present in the Cortex CPU series (or any v7).
* Now a complete architecture: you can have a Thumb-2-only CPU (v7M).
* Mixed 16/32-bit instruction stream provides the economy of space of Thumb combined with most of the speed of pure ARM code.

What does Thumb-2 assembly language look like?

It’s pretty much like ARM assembler. ARM Ltd. have unified the ARM and Thumb assembler formats into *UAL* – a Unified Assembler Language. New ARM assemblers can take UAL format assembler and output to ARM *or* Thumb-2.
