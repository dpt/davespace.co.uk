section: ARM,Introduction to ARM
title: Program Counter
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
pageOrder: 1050
next: syntax
previous: registers
----

%% Slide
  
## Program Counter

* When in ARM mode:
  * Instructions are 32 bits wide.
  * All instructions must be word-aligned.
  * The PC is in bits [31:2] and bits [1:0] are undefined.
* When in Thumb mode:
  * Instructions are 16 bits wide.
  * All instructions must be halfword-aligned.
  * The PC is in bits [31:1] and bit 0 is undefined.
  
%% Remarks
  
## Remarks

“word” and “halfword” mean 4-byte and 2-byte quantities respectively.

It’s not mentioned on the slide, but when in Jazelle mode:

* Instructions are 8 bits wide.
* Four are fetched at a time.
