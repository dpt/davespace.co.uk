section: ARM,Efficient C for ARM
title: Optimising
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide
pageOrder: 2030
next: profilers
previous: before-tuning
----

%% Slide

## Optimising

* The goal is to write C code which compiles into perfect, efficient, ARM code which:
  * Runs as **fast** as possible, and
  * Is as **small** as possible.
* Often these goals are contradictory.
* This process is called *optimisation*.
* Optimisation is not the same as fixing, reworking or refactoring your code.
* Optimisation **takes time** and may **reduce readability**.

%% Remarks

## Remarks

Optimisation is an iterative process, often involving much discovery.

%% Slide

## When To Optimise

* Only optimise **heavily-used** routines.
* Discover heavily-used routines by:
  * Inspection
  * Using a profiler
* The act of discovery is often surprising; sometimes embarrassing:

> He was calling strlen() in a loop.

%% Remarks

## Remarks

It might be worth optimising big routines for space.

Inspection is important: just reading the code can show up a multitude of problems.

Sometimes it’s valuable to re-visit code you’ve written earlier. A fresh perspective can make a difference to how you view the code.
