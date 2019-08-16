section: ARM,Introduction to ARM
title: Single Register Data Transfer
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
pageOrder: 1180
next: addressing
previous: multiply
----

%% Slide

## Single Register Data Transfer

<div class="format"><code>&lt;operation&gt;{cond}{size} Rd, &lt;address&gt;</code></div>

`<operation>`

* `LDR`
  * Rd := value at &lt;address&gt;
* `STR`
  * value at &lt;address&gt; := Rd

{size} is specified to transfer bytes or half-words:

* `<operation>B`
  * unsigned byte
* `<operation>SB`
  * signed byte
* `<operation>H`
  * unsigned half-word
* `<operation>SH`
  * signed half-word

%% Examples

## Examples of Single Register Data Transfer

* `LDR r0,[r1]`
  * Load word addressed by R1 into R0.
* `LDRB r0,[r1]`
  * The same as above but loads a byte.

%% Remarks

## Remarks

The instructions for accessing half-words were a later addition to the instruction set so have some restrictions (described on the next page).

`SB` and `SH` modes are not available with `STR`.

%% Slide

## Alignment Restrictions

In general, values loaded from or stored to memory must be aligned to the size of the data type:

* 32-bit words must be 4-byte aligned.
* 16-bit half-words must be 2-byte aligned.
* Bytes – no restriction.

This restriction was relaxed in ARMv6.

%% Remarks

## Remarks

Values can only be loaded from, or stored to, memory at a multiple of that type size. For example, a half-word can only be loaded from even addresses. (`double`s are an exception and can live on 4-byte boundaries in some architecture versions).
