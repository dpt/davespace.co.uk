section: arm
title: Efficient C for ARM: Looping Structures
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, TargetedOptimisation
pageOrder: 2240
next: regalloc
previous: varaddr
----

%% Slide

## Looping Structures

Loop termination condition can have a significant overhead.

* You should write loops to count down.

%% Examples

## Examples

Here’s a routine to calculate a factorial.

``` c
int fact1(int N)
{
  int i, fact = 1;
  for (i = 1; i <= N; i++)
    fact *= i;
  return fact;
}
```

Compiled by ARM ADS:

``` arm
fact1 MOV   r2,#1    ; fact
      MOV   r1,#1    ; i
loop  CMP   r1,r0    ; i <= N
      MULLE r2,r1,r2
      ADDLE r1,r1,#1
      BLE   loop
      MOV   r0,r2
      MOV   pc,lr
```

The revised routine counts down.

``` c
int fact2(int N)
{
  int fact = 1;
  do
    fact *= N;
  while (--N != 0);
  return fact;
}
```

Compiled by ARM ADS:

``` arm
fact2 MOV  r1,#1
loop  MUL  r1,r0,r1
      SUBS r0,r0,#1
      BNE  loop
      MOV  r0,r1
      MOV  pc,lr
```

* Allows `ADD`+`CMP` to become `SUBS`.
* The inner loop is now an instruction shorter.

But do note the subtly different behaviour:

* Iterates at least once (ie. `N == 0` won’t work, causing an infinite loop.)
* Uses a pre-decrement combined with test.

%% Remarks

## Remarks

Inner loop is 4 instructions.

Writing loops to count down is beneficial because:

* The `SUBS` instruction (subtract, setting flags) which is generated gives us a compare with zero for free.
* Replacing the `ADD`+`CMP` with `SUBS` saves a cycle per iteration.

After changes:

* `i` has been removed reducing register pressure.
* The counting up for loop was changed to a counting down `do .. while` loop.
