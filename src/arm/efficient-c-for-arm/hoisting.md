section: ARM,Efficient C for ARM
title: Hoisting
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, BasicOptimisation
pageOrder: 2120
next: datadrive
previous: padding
----

%% Slide

## Hoisting

Constant expressions inside a loop can be hoisted to outside of the loop.

* That way the code costs just once, rather than on every loop iteration.
* Keeps code out of the way – denser code.

%% Examples

## Examples

Doing the same test repeatedly in a loop:

``` c
txt->flags |= METRICS; /* for example */

for (i = 0; i < N; i++)
{
  if (txt->flags & TRANSLATE)
    translate(i);
  else if (txt->flags & METRICS)
    get_metrics(i);
  else
    draw(i);
}
```

We hoist out the loop:

``` c
if (txt->flags & TRANSLATE)
{
  for (i = 0; i < N; i++)
    translate(i);
}
else if (txt->flags & METRICS)
{
  for (i = 0; i < N; i++)
    get_metrics(i);
}
else
{
  for (i = 0; i < N; i++)
    draw(i);
}
```

%% Remarks

## Remarks

[http://www.compileroptimizations.com/category/hoisting.htm](http://www.compileroptimizations.com/category/hoisting.htm)
