section: ARM,Efficient C for ARM
title: Register Allocation
icon: microchip
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, TargetedOptimisation
pageOrder: 2250
next: func
previous: loops
----

%% Slide

## Register Allocation

The compiler attempts to allocate a register to each local variable.

It tries to use the same register for different local variables if the use of the variables does not overlap.

When number of local variables exceeds number of available registers then the excess variables are stored on the stack.

## Spilling

Such stacked variables are called _spilled_ since they are written out to memory.

Spilled variables are slow to access compared to variables allocated to registers.

To implement a function efficiently, you need to:

* Minimise the number of spilled variables.
* Ensure that critical variables are stored in registers.

## AAPCS Registers

AAPCS is the ARM Architecture Procedure Calling Standard. It is a convention which allows high level languages to interwork.

It’s had a number of different names over the years:

* APCS  → ARM Procedure Calling Standard.
* ATPCS → ARM Thumb Procedure Calling Standard.
* AAPCS → ARM Architecture Procedure Calling Standard.

Rn    | Name  | Usage under AAPCS
------|-------|------------------
R0..3 | A1..4 | Argument registers. These hold the first four function arguments on a function call and the return value on a function return. A function may corrupt these registers and use them as general scratch registers within the function.
R4..8 | V1..5 | General variable registers. The function must preserve the callee values of these registers.
R9    | V6 SB | General variable register. The function must preserve the callee value of this register except when compiling for read-write position independence (RWPI). Then R9 holds the static base address. This is the address of the read-write data.
R10   | V7 SL | General variable register. The function must preserve the callee value of this register except when compiling with stack limit checking. Then R10 holds the stack limit address.
R11   | V8 FP | General variable register. The function must preserve the callee value of this register except when compiling using a frame pointer. Only old versions of armcc use a frame pointer.
R12   | IP    | A general scratch register that the function can corrupt. It is useful as a scratch register for function veneers or other intra-procedure call requirements.
R13   | SP    | The stack pointer, pointing to the full descending stack.
R14   | LR    | The link register. On a function call this holds the return address.
R15   | PC    | The program counter.

## Available Registers

* R0..R12, R14 can all hold variables.
* Must save R4..R11, R14 on the stack if using these registers.
* Compiler can assign 14 variables to registers without spillage.
* But some compilers use a fixed register e.g. R12 as scratch and never keep values in it.
* Complex expressions need intermediate working registers.

Try to limit the inner loop of routines to at most 12 local variables.

* If the compiler does spill variables, it chooses which variables to spill based on frequency of use.
* A variable used inside a loop counts multiple times.
* You can tell the compiler about important variables by using them within the innermost loop.

%% Remarks

## Remarks

Variable lifetime analysis.

We’re talking about the inside of loops here, assuming no function calls.

As soon as function calls are made we effectively lose six of the registers.

Some platforms have additional restrictions. e.g. Palm OS 5 permanently reserves R9 for its use for all code.
