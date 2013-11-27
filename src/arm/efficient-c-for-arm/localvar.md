section: ARM,Efficient C for ARM
title: Local Variable Types
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, TargetedOptimisation
pageOrder: 2210
next: funcarg
previous: memaccess
----

%% Slide

## Local Variable Types

The ARM data processing operations always operate on 32-bit quantities. You should therefore:

* Use a 32-bit data type (e.g. `int`) for local variables.
* Avoid `char` and `short` for local variables, even if you’re manipulating a `char` or `short` value.

The exception to this is when you require wrap-around or modulo arithmetic (e.g. 255+1 → 0).

%% Examples

## Example

This example code calculates a simple checksum on a packet of 64 words:

``` c
int checksum1(const int *data)
{
  char i;
  int  sum = 0;

  for (i = 0; i < 64; i++)
    sum += data[i];

  return sum;
}
```

Let’s look at the annotated compiler output:

``` arm
checksum1
        MOV     r2,r0             ; R2 = data
        MOV     r0,#0             ; sum = 0
        MOV     r1,#0             ; i = 0
loop
        LDR     r3,[r2,r1,LSL #2] ; R3 = data[i]
        ADD     r1,r1,#1          ; R1 = i+1
        AND     r1,r1,#0xff       ; i = (char)R1   *** UNNECESSARY ***
        CMP     r1,#0x40          ; compare i to 64
        ADD     r0,r3,r0          ; sum += R3
        BCC     loop              ; if (i<64) loop
        MOV     pc,r14            ; return sum
```

The compiler is emitting an `AND r1,r1,#0xff` instruction even though it *should* know that `i` never exceeds 64. If we change `i` from `char` to `unsigned int` the `AND` disappears: it’s no longer necessary to account for wrap-around.

Remember that this isn’t just a saving of one instruction or cycle. It saves **64** instructions: *one for each iteration*.

This is an *inner loop*. Optimisations to inner loops are highly beneficial.

%% Remarks

## Remarks

You might think `char` is an efficient choice for `i`; using less stack space or register space than an `int` might. On the ARM, this is wrong:

* Stack entries are at least 32 bits wide.
* Registers are 32 bits wide.

To compute the modification of `i` correctly the compiler must account for the case where `i` will wrap around which you get for ‘free’ with `int`, but not with `char`.
