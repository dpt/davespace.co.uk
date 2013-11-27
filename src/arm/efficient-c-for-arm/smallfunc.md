section: ARM,Efficient C for ARM
title: Small Functions
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, TargetedOptimisation
pageOrder: 2270
next: biasing
previous: func
----

%% Slide

## Small Functions

If the compiler can ‘see’ the definition of a function—i.e. its definition is present in the same source file—it can optimise it further:

* The function can be subsumed entirely into its caller - inlining.
* Registers which are never used inside the function don’t need to be preserved.

This can be slightly confusing when examining the resultant assembly language code. Functions may appear to vanish when they’re subsumed into the caller.
