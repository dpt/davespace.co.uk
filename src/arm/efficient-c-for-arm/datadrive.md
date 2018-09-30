section: ARM,Efficient C for ARM
title: Data Drive
icon: microchip
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, BasicOptimisation
pageOrder: 2130
next: indexing
previous: hoisting
----

%% Slide

## Data Drive

* Avoid mixing code and data together.
* Instead separate out the data and write a simple loop.
* Doing this generates less code.

%% Examples

## Examples

The following simple routine maps a name to a number:

``` c
int nameToNumber(const char *name)
{
    if      (strcmp(name, "John")   == 0) return 5;
    else if (strcmp(name, "Paul")   == 0) return 2;
    else if (strcmp(name, "George") == 0) return 9;
    else if (strcmp(name, "Ringo")  == 0) return 3;
    else return -1; /* default case */
}
```

Because each case is written out individually, the compiler will emit code for
every individual case:

``` arm
nameToNumber
        STMFD    sp!,{r4,lr}
        MOV      r4,r0       ; name
        ADR      r1,|L1.104| ; "John"
        BL       strcmp
        CMP      r0,#0       ; yes?
        MOVEQ    r0,#5       ; retval
        LDMEQFD  sp!,{r4,pc} ; return
        MOV      r0,r4       ; name
        ADR      r1,|L1.112| ; "Paul"
        BL       strcmp
        CMP      r0,#0       ; yes?
        MOVEQ    r0,#2       ; retval
        LDMEQFD  sp!,{r4,pc} ; return
        ; ... more for each case ...
```

That’s 26 instructions × 4 bytes = **104 bytes**.

If we generalise the code, storing the data in a table which maps the input
names to output numbers, then we can save a significant amount of code:

``` c
#define NELEMS(a) ((int) (sizeof(a) / sizeof(a[0])))

int nameToNumber2(const char *name)
{
    static const struct
    {
        const char name[7]; /* NB. PIC */
        int        value;
    }
    map[] =
    {
        { "John",   5 },
        { "Paul",   2 },
        { "George", 9 },
        { "Ringo",  3 }
    };
    int i;

    for (i = 0; i < NELEMS(map); i++)
        if (strcmp(name, map[i].name) == 0)
            return map[i].value;

    return -1; /* default case */
}
```

Compiles to:

``` arm
nameToNumber2   STMFD    sp!,{r4-r6,lr}
                LDR      r6,=mapaddr     ; address of 'map'
                MOV      r5,r0           ; stash copy of name
                MOV      r4,#0           ; i
loop            ADD      r0,r4,r4,LSL #1 ;
                ADD      r1,r6,r0,LSL #2 ; map + i*12
                MOV      r0,r5           ; = name
                BL       strcmp
                CMP      r0,#0           ; match?
                ADDEQ    r0,r4,r4,LSL #1 ; yes
                ADDEQ    r0,r6,r0,LSL #2 ; map + i*12 again
                LDREQ    r0,[r0,#8]      ; fetch map[i].value
                LDMEQFD  sp!,{r4-r6,pc}  ; return it
                ADD      r4,r4,#1        ; otherwise no match
                CMP      r4,#4           ; loop until out..
                BLT      loop            ; ..of data
                MVN      r0,#0
                LDMFD    sp!,{r4-r6,pc}  ; return -1
```

Which is 18 instructions × 4 bytes = **72 bytes**, saving of 32 bytes.
