section: arm
title: Introduction to ARM: Multiple Register Data Transfer
icon: compass
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1200
next: stack
previous: addressing
----

%% Slide
  
## Multiple Register Data Transfer

<div class="format"><code>&lt;operation&gt;{cond}<mode> Rn{!}, &lt;reglist&gt;</code></div>

`<operation>`:

* `LDM`
  * reglist := values at Rn
* `STM`
  * values at Rn := reglist

&lt;mode&gt; controls how Rn is incremented:

* `<op>IA` – Increment after.
* `<op>IB` – Increment before.
* `<op>DA` – Decrement after.
* `<op>DB` – Decrement before.

&lt;reglist&gt; is the list of registers to load or store. It can be a comma-separated list or an Rx-Ry style range.
  
%% Examples
  
## Examples

* `LDMIA r0, {r3,r7}`
  * Load words addressed by R0 into R3 and R7.
  * Increment After each load.
* `LDMIA r0, {r3-r7}`
  * Load words addressed by R0 into R3, R4, R5, R6 and R7.
  * Increment After each load.
* `STMDB r1!, {r6-r8}`
  * Store R6,R7,R8 into words addressed by R1.
  * Write back the final address into R1.
  * Decrement Before each store.
