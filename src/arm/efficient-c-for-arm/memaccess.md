section: ARM,Efficient C for ARM
title: Memory Access
icon: microchip
date: 2012-03-03
tags: ARM, EfficientC, Slide, TargetedOptimisation
pageOrder: 2200
next: localvar
previous: datatypes
----

%% Slide

## Memory Access

ARM is a *load-store* architecture:

* Data must be loaded into registers from memory before it can be operated upon.
* No instructions directly manipulate memory values.

Prior to ARMv4, ARM had no native support for loading halfwords and signed bytes.

* So `char` is `unsigned` by default on ARM.

%% Slide

## Memory Instructions Throughout the Ages

Not all of the memory access instructions available in the current ARM ISA were present in the original ARM. Newer instructions, such as those for processing half-words, have had to be squeezed into later architectures. Limits on the amount of instruction space available meant that they could not be made as flexible as the original instructions.

Architecture | Instruction | Action
-------------|-------------|--------
Pre-ARMv4    | `LDRB`      | load unsigned 8-bit
             | `STRB`      | store signed or unsigned 8-bit
             | `LDR`       | load signed or unsigned 32-bit
             | `STR`       | store signed or unsigned 32-bit
ARMv4        | `LDRSB`     | load signed 8-bit
             | `LDRH`      | load unsigned 16-bit
             | `LDRSH`     | load signed 16-bit
             | `STRH`      | store signed or unsigned 16-bit
ARMv5        | `LDRD`      | load signed or unsigned 64-bit
             | `STRD`      | store signed or unsigned 64-bit

You may get better performance by using `LDR` to process packed pairs of half-words instead of `LDRH`, for example.

%% Remarks

## Remarks

ARMv4 introduced signed and halfword memory access types.

ARMv5 introduced double-word accesses.

* `LDRD` and `STRD` require addresses aligned to an 8-byte boundary.

ARM coding guru Robin Watts says:
> "Using the newer types, such as half-word/short, is intrinsically less efficient on ARMs. Array indexing of shorts costs one more cycle than ints."
