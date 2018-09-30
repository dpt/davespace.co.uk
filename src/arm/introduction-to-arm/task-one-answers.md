section: ARM,Introduction to ARM
title: Task One - Answers
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1240
previous: task-one
----

%% Slide
  
## Task One - Answers

The routine turns an ASCII character lower-case. In C it would be written like this:

``` c
int mystery(int c)
{
  unsigned int t;

  t = c - 'A';
  if (t <= 'Z' - 'A')
    c += 'a' - 'A';

  return c;
}
```

The tricky thing here is the coercion to `unsigned int` which allows us to replace two comparisons with a single one. This trick, the *unsigned range optimisation*, is [discussed](/arm/efficient-c-for-arm/unsignedrange.html) in the [Efficient C for ARM](/arm/efficient-c-for-arm/index.html) course.

We can write it in a more expected way like this:

``` c
int mystery2(int c)
{
  if (c >= 'A' && c <= 'Z')
     c += 'a' - 'A';

  return c;
}
```
