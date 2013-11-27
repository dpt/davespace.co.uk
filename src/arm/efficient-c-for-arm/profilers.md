section: ARM,Efficient C for ARM
title: Profilers
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide
pageOrder: 2040
next: slow
previous: optimising
----

%% Slide

## Profilers

When profiling on x86 don’t expect the results to be accurate for ARM.

* Strengths and weaknesses of the platform will affect results.

Profiles will show you where most time is spent.

* That’s not going to highlight any algorithmic mistakes.
  * You can tune a bubble sort to perfection...

Remember to profile release builds.

* Including debugging code may skew your results:
  * Debug mode normally inhibits compiler optimisations.
  * Debug builds enable a variety of extra bits (assertions, debug output).
