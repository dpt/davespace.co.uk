section: arm
title: Introduction to ARM: Task Two - Answers
icon: compass
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1260
next: thumb
previous: task-two
----

%% Slide
  
## Task Two - Answers

C test shell:

``` c
#include <stdio.h>

extern int factorial(int N);

int main(void)
{
    int i;

    /* The largest factorial we can store in an int,
     * or an ARM register, is 12! or 479,001,600. So
     * loop from 0..12. */
    for (i = 0; i < 13; i++)
        printf("The factorial of %d is %d.\n", i, factorial(i));
}
```

ARM assembly language factorial routine:

``` arm
    AREA    |.text|, CODE, READONLY

;   int factorial(int N);

    EXPORT  factorial

factorial               ; On entry, N is stored in R0.
    MOVS    r1, r0      ; R1 is our loop counter. Copy N to R1 and test.
    MOVEQ   r0, #1      ; if (R1 == 0) Set result to 1 and fall through to return...
loop
    SUBNES  r1, r1, #1  ; if (R1 != 0) Decrement R1 and test.
    MULNE   r0, r1, r0  ; if (R1 != 0) Result = R1 * Result.
    BNE     loop        ; if (R1 != 0) Loop.
    MOV     pc, r14     ; Return with result in R0.

    END
```
