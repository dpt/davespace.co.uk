section: ARM,Efficient C for ARM
title: Avoid Array Indexing
icon: rocket
date: 2012-03-03
layout: page
tags: ARM, EfficientC, Slide, BasicOptimisation
pageOrder: 2140
next: aliasing
previous: datadrive
----

%% Slide

## Avoid Array Indexing

* Accessing an array element uses two variables
  * Base and Index.
* Usually there’s a limit value to test against too.
  * e.g. length of array.
* If you can substitute a single pointer variable instead of Base and Index, you can:
  * Replace per-access computations with a periodically incrementing pointer.
  * Usually save a register (3 variables -> 2 variables).

%% Examples

## Example

If we rewrite the `nameToNumber()` example routine from earlier as follows:

``` c
int nameToNumber3(const char *name)
{
    static const struct map
    {
        const char name[7]; /* NB. PIC */
        int        value;
    }
    map[] = ...;

    const struct map *entry, *end;

    end = map + NELEMS(map);
    for (entry = &map[0]; entry < end; entry++)
        if (strcmp(name, entry->name) == 0)
            return entry->value;

    return -1; /* default case */
}
```

`ARMCC -O2 -Otime` now outputs the following:

``` arm
nameToNumber3 STMFD    sp!,{r4-r6,lr}
              LDR      r4,=mapaddr     ; address of "map"
              MOV      r6,r0           ; stash copy of name
              ADD      r5,r4,#0x30     ; R5 = end
              CMP      r4,r5           ; out of data?
              BCS      exit
loop          MOV      r1,r4           ; R1 = entry->name
              MOV      r0,r6           ; R0 = name
              BL       strcmp
              CMP      r0,#0           ; match?
              LDREQ    r0,[r4,#8]      ; fetch entry->value
              LDMEQFD  sp!,{r4-r6,pc}  ; return it
              ADD      r4,r4,#0xc      ; otherwise no match
              CMP      r4,r5           ; loop until out..
              BCC      loop            ; ..of data
exit          MVN      r0,#0
              LDMFD    sp!,{r4-r6,pc}  ; return -1
```
