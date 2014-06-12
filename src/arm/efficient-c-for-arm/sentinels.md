section: ARM,Efficient C for ARM
title: Sentinels
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, BasicOptimisation
pageOrder: 2170
next: unrolling
previous: chains
----

%% Slide

## Sentinels

When searching through a list we normally do two comparisons:

1. Compare loop index against maximum.
2. Compare current key against desired key.

That’s two flow conditions inside a tight loop, which is bad on modern [pipelined](http://en.wikipedia.org/wiki/Instruction_pipeline) CPUs.

Solution:

* Augment the array with the desired value at the end.
  * This allows both comparisons to be merged.
  * But it requires one extra element.

%% Examples

## Example

The original code:

``` c
int search1(int *list, int N, int want)
{
  int i;

  for (i = 0; i < N; i++)
    if (list[i] == want)
      return i;

  return -1;
}
```

Compiles to:

``` arm
search1
     MOV   r3,#0     ; i = 0
     B     loop
test LDR   r12,[r0,r3,LSL #2]
     CMP   r12,r2    ; key
     ADDNE r3,r3,#1  ; i++
     BNE   loop
     MOV   r0,r3     ; i
     MOV   pc,lr
loop CMP   r3,r1     ; i < N
     BLT   test
     MVN   r0,#0     ; -1
     MOV   pc,lr
```

If we rewrite it as follows:

``` c
int search2(int *list, int N, int want)
{
  int i;

  list[N] = want;

  i = 0;
  while (list[i] != want)
    i++;

  if (i == N)
    return -1;

  return i;
}
```

It compiles to:

``` arm
search2
     STR   r2,[r0,r1,LSL #2]
     MOV   r3,#0     ; i = 0
loop LDR   r12,[r0,r3,LSL #2]
     CMP   r12,r2
     ADDNE r3,r3,#1  ; i++
     BNE   loop
     CMP   r3,r1     ; i == N
     MOVNE r0,r3
     MVNEQ r0,#0     ; -1
     MOV   pc,lr
```

%% Remarks

## Remarks

Sentinel: Computers. a symbol, mark, or other labelling device indicating the beginning or end of a unit of information.

This is from [http://www.azillionmonkeys.com/qed/case4.html](http://www.azillionmonkeys.com/qed/case4.html).

Obviously you need to ensure that `list[N]` is both available and writable.

This can be improved further by [replacing array indexing with pointers](indexing.html).
