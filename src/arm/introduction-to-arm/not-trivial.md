section: ARM,Introduction to ARM
title: Not a Trivial Mapping
icon: compass
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1020
next: instruction-sets
previous: why-learn
----

%% Slide
  
## Not a Trivial Mapping

There are features available to the assembly language programmer which don’t map onto C:

* Processor flags
  * the carry flag.
* Vector operations
  * SIMD instructions.
* Bulk transfers
  * multiple-register loads and stores.
* Specialised operations
  * population count.
* Atomic test-and-set instructions
  * mutexes.
* Other on-chip hardware
  * MAC units.

The benefits of these features may be lost if plain, or naïve, C code is used.
  
%% Remarks
  
## Remarks

[SIMD](http://en.wikipedia.org/wiki/SIMD) = Single Instruction Multiple Data.

[MAC](http://en.wikipedia.org/wiki/Multiply-accumulate) = Multiply Accumulate.

C compilers aren’t capable of producing every operation which a CPU can perform. Many compilers have [*intrinsics*](http://en.wikipedia.org/wiki/Intrinsic_function), which look like functions but emit the desired operations into the instruction stream. But no language can provide complete coverage for every CPU.

The compiler is likely to be a more consistent assembly language programmer than you. You must weigh up the pros and cons of using it. It’s not worth wasting time on assembly language code which the compiler could have produced.

The [80-20](http://en.wikipedia.org/wiki/Pareto_principle) rule: 80% of the time is spent executing 20% of the program. Concentrate on the 20%. It’s a rule of thumb.
