section: ARM,Introduction to ARM
title: Multiply Instructions
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1170
next: data-transfer
previous: conditional
----

%% Slide
  
## 32×32→32 Multiply Instructions

<div class="format"><code>&lt;operation&gt;{cond}{S} Rd, Rm, Rs {, Rn}</code></div>

`<operation>`

* `MUL` – *Multiply*
  * Rd := Rm × Rs
* `MLA` – *Multiply with Accumulate*
  * Rd := Rn + (Rm × Rs)

The multiply instructions produce the same result for both signed and unsigned values.

Historical note: Prior to ARMv4 specifying the same register for Rd and Rm had potentially unpredictable results.
  
%% Slide
  
## 32×32→64 Multiply Instructions

<div class="format"><code>&lt;operation&gt;{cond}{S} RdLo, RdHi, Rm, Rs</code></div>

64-bit result output into two registers.

`<operation>`

* `UMULL` – *Unsigned Multiply Long*
  * RdHi, RdLo := Rm × Rs
* `UMLAL` – *Unsigned Multiply with Accumlate Long*
  * RdHi, RdLo := RdHi,RdLo + (Rm × Rs)
* `SMULL` – *Signed Multiply Long*
  * RdHi, RdLo := Rm × Rs
* `SMLAL` – *Signed Multiply with Accumlate Long*
  * RdHi, RdLo := RdHi,RdLo + (Rm × Rs)

Note that they have the same form, but they treat the sign bit differently.
