section: ARM,Efficient C for ARM
title: Function Argument Types
icon: microchip
date: 2012-03-03
tags: ARM, EfficientC, Slide, TargetedOptimisation
pageOrder: 2220
next: varaddr
previous: localvar
----

%% Slide

## Function Argument Types

``` c
short addshorts1(short a, short b)
{
  return (short) (a + (b >> 1));
}
```

* The same rule seen on the previous page also holds for arguments passed to functions.
* In this example the input and output values are both `short`.
  * Yet the values will be passed in (and out) in 32-bit-wide registers.
* Should the compiler assume values are already in the range of a `short`?
* Or should the compiler force the values to this range by sign-extending the low 16 bits to fill the 32-bit register?
* The compiler must make a compatible decision for both the caller and the callee.

%% Examples

## Example

For the above example, ARMCC generates:

``` arm
addshorts1
  ADD r0,r0,r1,ASR #1  ; r0 = (int)a + ((int)b>>1)
  MOV r0,r0,LSL #16
  MOV r0,r0,ASR #16    ; r0 = (short)r0
  MOV pc,r14           ; return r0
```

It assumes input values are in the correct range.

GCC generates:

``` arm
addshorts1
  MOV r0,r0,LSL #16
  MOV r1,r1,LSL #16
  MOV r1,r1,ASR #17    ; r1 = (int)a
  ADD r1,r1,r0,ASR #16 ; r1 += (int)b
  MOV r1,r1,LSL #16
  MOV r0,r1,ASR #16    ; r0 = (short)r1
  MOV pc,lr            ; return r0
```

It makes no assumptions about the range of argument values so sign extends the values on entry.

%% Remarks

## Remarks

This is from [ARM System Developer’s Guide](references.html#asdg) section 5.2.2.

* This sort of behaviour differs from toolchain to toolchain.
* It makes it hard to mix objects reliably between compilers.

The `LSL #16` + `ASR #16` is a sign extending operation.

ARMCC passes narrow arguments and return value. GCC passes wide but returns narrow.

You can see from this that simply mixing objects between different compilers can cause all sorts of problems.
