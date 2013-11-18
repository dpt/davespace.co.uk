section: arm
title: Efficient C for ARM: Taking a Variable’s Address
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, TargetedOptimisation
pageOrder: 2230
next: loops
previous: funcarg
----

%% Slide

## Taking a Variable’s Address

``` c
int N;

getlimit(&N);
for (i = 0; i < N; i++)
  ...
```

Taking the address of a variable means that it must live in memory.

* The variable is then subject to pointer aliasing.
* Heavy use of the variable will be costly.

Solution:

* Make a second, non-memory-bound, copy of the variable for intensive use.

%% Remarks

## Remarks

When you take the address of a variable it is then memory-bound for its lifetime. So even if, as in this example, you only take the address once then use it later it’s still a memory-bound variable.
