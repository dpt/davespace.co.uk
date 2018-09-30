section: ARM,Introduction to ARM
title: Task One
icon: microchip
date: 2012-03-03
tags: ARM,IntroductionToARM,Slide
layout: page
pageOrder: 1230
next: task-two
previous: chain
----

%% Slide
  
## Task One

## Mystery Routine

At this point in the presentation we stop to try out a couple of tasks. These help us put together the information just laid out.

*The original tasks used ARM Developer Suite as the environment. All of the assembler examples given in the presentation use armasm format. For now, if you’re using a different environment you will have to convert the assembler to the correct format.*

``` c
#include <stdio.h>

extern int mystery(int); /* mystery assembler routine */

int main(void)
{
    static const char str[] = "Hello, World!";

    const int len = sizeof(str) / sizeof(str[0]);
    char      newstr[len];
    int       i;

    for (i = 0; i < len; i++)
        newstr[i] = mystery(str[i]);

    printf("%s\n", newstr);

    return 0;
}
```

``` arm
    AREA    |.text|, CODE, READONLY

    EXPORT  mystery

mystery
    SUB     r1, r0, #'A'
    CMP     r1, #'Z' - 'A'
    ADDLS   r0, r0, #'a' - 'A'
    MOV     pc, r14

    END
```

It’s a "mystery" assembly language routine.

* What does it do?
* It should be obvious that it’s doing some sort of character processing. But what exactly?
* And how does it work?

## ARM Architecture Procedure Calling Standard

The ARM Architecture Procedure Calling Standard (AAPCS) governs how procedures call each other in high-level languages such as C.

We’re going to call into an ARM assembly routine from C. AAPCS specifies that:

* The first four arguments are passed in R0-R3.
  * Any subsequent arguments are passed on the stack.
* The return value, if any, is passed back in R0-R3.
  * Typically only R0 is used.

## Answers

Answers are [here](task-one-answers.html).
