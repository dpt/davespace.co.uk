section: ARM,Efficient C for ARM
title: Efficiency
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide
pageOrder: 2010
next: before-tuning
previous: index
----

%% Slide

## Efficiency

Why do we need efficient software?

* Competitive advantage
  * Software that runs faster and in less space (than our competitors’)
* Increased possibilities
  * Increased speed and smaller binaries allow for additional functionality (over our competitors’)
* Gets us into more markets
  * A smaller app can run on smaller devices (more devices, more royalties)

%% Remarks

## Remarks

A couple of definitions:

* Acting or producing effectively with a minimum of waste, expense, or unnecessary effort.
* Exhibiting a high ratio of output to input.

Moore’s law defence:

* Computers double in speed every 18 months. Why bother re-working your code when you can just wait 18 months and get a faster machine?

Overly-simplistic example:

* Let’s say we have a movie player which runs at 10fps. Our competitor has a movie player which runs at 20fps.
* If we don’t optimise our player, in 18 months’ time our competitor’s player will be running at 40fps. We’ll be running at 20fps. Only half as fast.
* If we beat them now, we’ll be able to beat them in future.

Future-proofing:

In 18 months’ time we’ll be on version N + 1 of the software. Which will have even more features to support.
