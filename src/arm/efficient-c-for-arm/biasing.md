section: ARM,Efficient C for ARM
title: Biasing Values
icon: microchip
date: 2012-03-03
tags: ARM, EfficientC, Slide, TargetedOptimisation
pageOrder: 2280
next: unsignedrange
previous: smallfunc
----

%% Slide

## Biasing Values

* ARM instructions are able to encode a limited range of immediate values.
  * For example, a single instruction can encode the integer constant 0x33 immediately but not 0xE33.
* When dealing with numbers restricted to a certain range it may be worth biasing the values so that they can fit in ARM’s available range.

%% Examples

## Examples

This fragment tests whether Unicode character `c` is a Thai dependent character.

``` c
return c == UNICODE_THAI_MAI_HAN_AKAT  ||  /* 0x0E31 */
       c == UNICODE_THAI_SARA_AM       ||  /* 0x0E33 */
       c == UNICODE_THAI_SARA_I        ||  /* 0x0E34 */
       c == UNICODE_THAI_SARA_II       ||  /* 0x0E35 */
       c == UNICODE_THAI_SARA_UE       ||  /* 0x0E36 */
       c == UNICODE_THAI_SARA_UEE      ||  /* 0x0E37 */
       c == UNICODE_THAI_SARA_U        ||  /* 0x0E38 */
       c == UNICODE_THAI_SARA_UU       ||  /* 0x0E39 */
       c == UNICODE_THAI_PHINTHU       ||  /* 0x0E3A */
       c == UNICODE_THAI_LAKKHANGYAO   ||  /* 0x0E45 */
       c == UNICODE_THAI_MAITAIKHU     ||  /* 0x0E47 */
       c == UNICODE_THAI_MAI_EK        ||  /* 0x0E48 */
       c == UNICODE_THAI_MAI_THO       ||  /* 0x0E49 */
       c == UNICODE_THAI_MAI_TRI       ||  /* 0x0E4A */
       c == UNICODE_THAI_MAI_CHATTA_WA ||  /* 0x0E4B */
       c == UNICODE_THAI_THANTHAKHAT   ||  /* 0x0E4C */
       c == UNICODE_THAI_NIKHAHIT      ||  /* 0x0E4D */
       c == UNICODE_THAI_YAMAKKAN;         /* 0x0E4E */
```

``` arm
bias1 SUB   r12,r0,#0xe00
      SUBS  r12,r12,#0x31
      LDRNE r12,|L1.552|
      CMPNE r0,r12
      LDRNE r12,|L1.556|
      CMPNE r0,r12
      LDRNE r12,|L1.560|
      CMPNE r0,r12
      LDRNE r12,|L1.564|
      CMPNE r0,r12
      LDRNE r12,|L1.568|
      CMPNE r0,r12
      LDRNE r12,|L1.572|
      CMPNE r0,r12
      LDRNE r12,|L1.576|
      CMPNE r0,r12
      ...
```

In this revised version we bias the input character `c` by 0xE00.

``` c
c -= 0xE00;
return c == (UNICODE_THAI_MAI_HAN_AKAT  - 0xE00) ||
       c == (UNICODE_THAI_SARA_AM       - 0xE00) ||
       c == (UNICODE_THAI_SARA_I        - 0xE00) ||
       c == (UNICODE_THAI_SARA_II       - 0xE00) ||
       c == (UNICODE_THAI_SARA_UE       - 0xE00) ||
       c == (UNICODE_THAI_SARA_UEE      - 0xE00) ||
       c == (UNICODE_THAI_SARA_U        - 0xE00) ||
       c == (UNICODE_THAI_SARA_UU       - 0xE00) ||
       c == (UNICODE_THAI_PHINTHU       - 0xE00) ||
       c == (UNICODE_THAI_LAKKHANGYAO   - 0xE00) ||
       c == (UNICODE_THAI_MAITAIKHU     - 0xE00) ||
       c == (UNICODE_THAI_MAI_EK        - 0xE00) ||
       c == (UNICODE_THAI_MAI_THO       - 0xE00) ||
       c == (UNICODE_THAI_MAI_TRI       - 0xE00) ||
       c == (UNICODE_THAI_MAI_CHATTA_WA - 0xE00) ||
       c == (UNICODE_THAI_THANTHAKHAT   - 0xE00) ||
       c == (UNICODE_THAI_NIKHAHIT      - 0xE00) ||
       c == (UNICODE_THAI_YAMAKKAN      - 0xE00);
```

``` arm
bias2 SUB      r0,r0,#0xe00
      CMP      r0,#0x31
      CMPNE    r0,#0x33
      CMPNE    r0,#0x34
      CMPNE    r0,#0x35
      CMPNE    r0,#0x36
      CMPNE    r0,#0x37
      CMPNE    r0,#0x38
      CMPNE    r0,#0x39
      CMPNE    r0,#0x3a
      CMPNE    r0,#0x45
      CMPNE    r0,#0x47
      CMPNE    r0,#0x48
      CMPNE    r0,#0x49
      BEQ      |L1.544|
      CMP      r0,#0x4a
      ...
```

Comparing the output assembly:

* bias1: 41 instructions + 14 data values = 220 bytes
* bias2: 24 instructions = 96 bytes
