section: ARM,Introduction to ARM
title: Branch Instructions
icon: compass
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1150
next: conditional
previous: immediates
----

%% Slide
  
## Branch Instructions

So how do we implement control structures like `for` and `while` loops? *Branch* instructions are used to alter control flow.

<div class="format"><code>&lt;operation&gt;{cond} &lt;address&gt;</code></div>

<operation>

* `B` – *Branch*
  * PC := &lt;address&gt;
* `BL` – *Branch with Link*
  * R14 := address of next instruction, PC := &lt;address&gt;

How do we return from the subroutine which `BL` invoked?

`MOV pc, r14`

or

`BX r14` (on ARMv4T or later)

%% Examples

## Examples of Branch Instructions

Branching forward, to skip over some code:

``` arm
    ...            ; some code here
    B fwd          ; jump to label 'fwd'
    ...            ; more code here
fwd
```

Branching backwards, creating a loop:

``` arm
back
    ...            ; more code here
    B back         ; jump to label 'back'
```

Using `BL` to call a subroutine:

``` arm
    ...
    ...
    BL  calc       ; call 'calc'
    ...            ; returns to here
    ...

calc               ; function body
    ADD r0, r1, r2 ; do some work here
    MOV pc, r14    ; PC = R14 to return
```

%% Remarks
  
## Remarks

Branches are PC-relative. +/-32M range (24 bits × 4 bytes).

Since ARM’s branch instructions are PC-relative the code produced is position independent — it can execute from any address in memory. Certain systems such as BREW take advantage of this to avoid the need for an MMU.

How can we perform longer branches which access the full 32-bit address space? You can set up the LR manually if needed, then load into PC:

``` arm
MOV lr,pc
LDR pc,=dest
```
