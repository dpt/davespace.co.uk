section: ARM,Introduction to ARM
title: Addressing Modes
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1190
next: multiple-data-transfer
previous: data-transfer
----

%% Slide

## Addressing Modes

An `<address>` can take multiple forms:

* An address expression:
  * `<expression>`
* A pre-indexed address – where the address generated is used immediately:
  * `[Rn, <expression>]{!}`
  * `[Rn, {-}Rm]{!}`
  * `[Rn, {-}Rm <shift> count]{!}`
* A post-indexed address – where the address generated later replaces the base register:
  * `[Rn], <expression>`
  * `[Rn], {-}Rm`
  * `[Rn], {-}Rm <shift> count`

Where <shift> is any of `LSL`, `LSR`, `ASR`, `ROR` or `RRX` as described earlier.

Pre-indexed writeback denoted by `{!}` causes the final address generated to be written back into Rn.

%% Examples

## Examples of Addressing Modes

* `LDR r0,[r1,#4]`
  * Load word addressed by R1+4.
* `STR r0,[r1],#4`
  * Store R0 to word addressed by R1. Increment R1 by 4.
* `LDR r0,[r1,#4]!`
  * Load word addressed by R1+4. Increment R1 by 4.
* `LDRLS pc,[r1,r0,LSL #2]`
  * Jump table idiom: load routine address into PC from R1 + R0 * 4.

%% Remarks

## Remarks

The &lt;address&gt; form is a pseudo instruction: the assembler generates a PC-relative `LDR` or `STR`.

For halfword and signed halfword/byte instructions, which were later additions to the instruction set, the offset is restricted and can be:

* an unsigned 8-bit immediate value, or
* an unshifted register.
