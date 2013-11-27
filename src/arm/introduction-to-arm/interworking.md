section: ARM,Introduction to ARM
title: Interworking
icon: compass
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1280
next: thumb-example
previous: thumb
----

%% Slide
  
## Interworking

You can mix and match ARM and Thumb code within the same binary. This is called *interworking* and it lets you exploit the strengths of each instruction set.

For example:

* The bulk of your code could be written in Thumb, to minimise binary size.
* Performance critical parts could be written in ARM, for speed.

The ‘T’ bit in the CPSR register signals Thumb mode.

* Switch between modes with `BX Rm`.
  * Special form of branch instruction.
  * Bottom bit of Rm becomes the T bit.

ARMv5T and later architectures add:

* `BLX <Rm|label>`
* and other changes which make interworking much more pleasant.
