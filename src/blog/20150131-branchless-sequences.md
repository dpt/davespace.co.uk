title: Branchless code sequences
icon: rocket
layout: post
date: 2015-01-31
tags: Aha, GitHub, Project, EfficientC
----

## Overview

<!-- begin summary -->

Sometimes when programming we need to tune a small portion of code which is critical to an implementation. For example an inner loop may involve a pixel bashing operation which dominates the program's overall performance. If this operation uses a comparison, and that results in the compiled code branching, it can hurt performance on pipelined CPUs. It may be better to find a branch-free alternative even if it appears to make the code slightly more complex.

But how do we find these branch-free alternatives? Sufficiently small sequences can be discovered with a _superoptimiser_ program. Superoptimisers are not as clever as the name might suggest: they are typically an exhaustive search through a (virtual) instruction set, trying every conceivable permutation of instructions until it finds one which—for the given input values—works.

Two examples of this are [GNU superopt](http://directory.fsf.org/wiki/Superopt) (1995) and [Aha! - A Hacker's Assistant](http://www.hackersdelight.org/) (2008). In this article I'll only discuss Aha.

<!-- end summary -->


### A Hacker's Assistant

Aha exhaustively tries all reasonable combinations of instructions from a customisable set. The instruction set corresponds to no real CPU but is sufficiently general and RISC-like to be applicable to most CPUs.

It simulates 32-bit calculations only and knows nothing about processor flags.

Aha was written by Henry S. Warren, Jr. author of the indispensable book on bit twiddling: [Hacker's Delight](http://www.amazon.co.uk/gp/product/0321842685/).

I maintain [a version of Aha on Github](https://github.com/dpt/Aha) which includes a couple of straightforward tweaks to make it more interesting for ARM CPUs. Additions I've made to its repertoire include adding ARM's *bitwise clear* 'BIC' instruction (equivalent to AND NOT) and an optional *reverse subtract* 'RSB'.


### An example

First, clone and enter the Aha repo:

```
$ git clone git@github.com:dpt/Aha.git
$ cd Aha
```

Let's cook up an illustrative operation to be pumped through Aha:

``` c
/* test.frag.c */

#include "aha.h"

int userfun(int x)
{
  if (x == 0)      return 1;
  else if (x == 1) return 2;
  else             return 0;
}
```

We'll build the Aha binary, linking in our user function (with only a few source files it's quick to build):

```
$ make EXAMPLE=test aha
gcc -c -O2 -Wall -Wno-unused-variable -MMD -I. -DINC=\"test.frag.c\" -DOFILE=\"test.out\" -o aha.o aha.c
gcc -c -O2 -Wall -Wno-unused-variable -MMD -I. -DINC=\"test.frag.c\" -DOFILE=\"test.out\" -o simulator.o simulator.c
gcc -O2 -Wall -Wno-unused-variable -MMD -I. -DINC=\"test.frag.c\" -DOFILE=\"test.out\" -o aha aha.o simulator.o
```

Let's initially see if there are any programs which can calculate our operation in three operations:

```
$ ./aha 3
Searching for programs with 3 operations.
Found 0 solutions.
Counters = 372751, 382255, 952561, total = 1707567
Process time = 0.029 secs
```

Nope... Okay, let's try four:

```
$ ./aha 4
Searching for programs with 4 operations.

Found a 4-operation program:
   add   r1,rx,-2
   bic   r2,r1,rx
   shr   r3,r2,31
   shl   r4,r3,rx
   Expr: ((((x + -2) & ~x) >>u 31) << x)

Found a 4-operation program:
   sub   r1,rx,2
   bic   r2,r1,rx
   shr   r3,r2,31
   shl   r4,r3,rx
   Expr: ((((x - 2) & ~x) >>u 31) << x)

Found a 4-operation program:
   shr   r1,rx,1
   sub   r2,r1,1
   shr   r3,r2,31
   shl   r4,r3,rx
   Expr: ((((x >>u 1) - 1) >>u 31) << x)

Found a 4-operation program:
   shr   r1,rx,1
   sub   r2,0x80000000,r1
   shr   r3,r2,31
   shl   r4,r3,rx
   Expr: (((0x80000000 - (x >>u 1)) >>u 31) << x)
Found 4 solutions.
Counters = 71688592, 71698096, 73956616, 196050676, total = 413393980
Process time = 6.240 secs
```

This run has given us four suggested solutions:

 * `(((x + -2) & ~x) >>u 31) << x`
 * `(((x - 2) & ~x) >>u 31) << x`
 * `(((x >>u 1) - 1) >>u 31) << x`
 * `((0x80000000 - (x >>u 1)) >>u 31) << x`

Observe that the notation uses `>>u` for unsigned right shift. It can also emit `>>s` for signed right shift.

The first two suggestions are `(((x + -2) & ~x) >>u 31) << x` and `(((x - 2) & ~x) >>u 31) << x` which only differ by the subexpressions (x + -2) and (x - 2). These are of course the same thing, but since they're different operations to Aha it outputs them both. Occasionally this is valuable.


### Not *exhaustively* exhaustive

To verify that a routine works Aha runs through it with only a limited set of constants. The define `TRIAL` in Aha's `config.h` enumerates them:

```  c
#define TRIAL {1, 0, -1, \
               MAXNEG, MAXPOS, MAXNEG + 1, MAXPOS - 1, \
               0x01234567, 0x89ABCDEF, -2, 2, -3, 3, -64, 64, -5, -31415, \
               0x0000FFFF, 0xFFFF0000, \
               0x000000FF, 0x0000FF00, 0x00FF0000, 0xFF000000, \
               0x0000000F, 0x000000F0, 0x00000F00, 0x0000F000, \
               0x000F0000, 0x00F00000, 0x0F000000, 0xF0000000}
```

You could make Aha more accurate by adding to this list, but extending it too much will slow things down. Conversely you could reduce the elements here if you only care about it working for a subset of integers.

So while Aha performs an exhaustive *search* for answers it does **not** perform an exhaustive *test* of its suggestions. If you want a generated program to be proven working for all possible 32-bit input values (or for the subset of input values that matter to you) then you'll need to write a small test program yourself.

So let's build that small test program and verify that each of the suggested programs works for every possible 32-bit integer:

``` c
/* test.c -- test shell for Aha! suggested solutions */

#include <limits.h>
#include <stdio.h>

/* ----------------------------------------------------------------------- */

typedef unsigned int T;
typedef T (testfn_t)(T);

/* ----------------------------------------------------------------------- */

/* reference version of our original operation */ 
static T reference(T x)
{
    if (x == 0)
        return 1;
    else if (x == 1)
        return 2;
    else
        return 0;
}

static T branchless1(T x)
{
    return (((x + -2) & ~x) >> 31) << x;
}

static T branchless2(T x)
{
    return (((x - 2) & ~x) >> 31) << x;
}

static T branchless3(T x)
{
    return (((x >> 1) - 1) >> 31) << x;
}

static T branchless4(T x)
{
    return ((0x80000000 - (x >> 1)) >> 31) << x;
}

/* ----------------------------------------------------------------------- */

static const struct
{
    testfn_t *branchless, *reference;
}
tests[] =
{
    { &branchless1, &reference },
    { &branchless2, &reference },
    { &branchless3, &reference },
    { &branchless4, &reference },
};

/* ----------------------------------------------------------------------- */

#define NELEMS(a) (int)(sizeof(a) / sizeof(a[0]))

int main(void)
{
    int          j;
    unsigned int i;

    for (j = 0; j < NELEMS(tests); j++)
    {
        testfn_t *fn, *ref;
        int       nfailures;

        printf("starting test %d\n", j);

        fn  = tests[j].branchless;
        ref = tests[j].reference;

        nfailures = 0;

        /* test all values from zero to UINT_MAX */
        for (i = 0; ; i++)
        {
            if (fn(i) != ref(i))
                if (++nfailures < 20) /* report first twenty failures only */
                    printf("failure at %d\n", i);

            if ((i & 0x03ffffff) == 0) /* draw 64 dots */
            {
                putc('.', stdout);
                fflush(stdout);
            }

            if (i == UINT_MAX) /* test here to prevent infinite loop */
                break;
        }
        printf("\n");

        if (nfailures == 0)
            printf("all ok!\n");
        else
            printf("saw %d failures\n", nfailures);
    }

    return 0;
}
```

Build and run it:

```
$ gcc -Wall -O3 test.c -o test
$ ./test
starting test 0
................................................................
all ok!
starting test 1
................................................................
all ok!
starting test 2
................................................................
all ok!
starting test 3
................................................................
all ok!
```

Everything works. Cool!


## Some useful sequences I've found using Aha

### Absolute value

To calculate `x >= 0 ? x : -x`, try:

* `((x >>s 31) ^ x) - (x >>s 31)`, or
* `((x >>s 31) + x) ^ (x >>s 31)`

Of course we can pull the constant term `s` `(x >>s 31)` out from these and have:

* `(s ^ x) - s`, or
* `(s + x) ^ s`

See [this article](https://hbfs.wordpress.com/2008/08/05/branchless-equivalents-of-simple-functions/) from [Harder, Better, Faster, Stronger](https://hbfs.wordpress.com/)  for similar.


### Coerce to boolean

To calculate `!!x` (which coerces a variable to a bool), try:

* `(-(x) | x) >>u 31`, or
* `((x >>u 1) - x) >>u 31`

I researched this case, and the following ones, after discovering that a large game vendor's compiler was inserting a needless branch when a cast to bool was added. Replacing the cast with one of these solved the issue. Sometimes even inbuilt operators can result in unexpected, redundant branches.


### Coerce to inverted boolean

To calculate `!x`, try:

* `((x - 1) & ~x) >>u 31`, or
* `((x - 1) & ~x) >>u (x - 1)`, or
* `((x - 1) & ~x) >>u ((x - 1) & ~x)`, or
* `((0x80000000 - x) & ~x) >>u 31`


### Coerce to boolean where true is negative one

To calculate `x ? -1 : 0`, try:

* `(-(x) | x) >>s 31`, or
* `((x >>u 1) - x) >>s 31`


## References

* [Aha's manual](http://www.hackersdelight.org/aha/aha.pdf) (Henry Warren, 2008)
* [Branchless Equivalents of Simple Functions](https://hbfs.wordpress.com/2008/08/05/branchless-equivalents-of-simple-functions/) (Steven Pigeon, 2008)

## Links

* [ARM's `divc.c` optimal divide-by-constant code generator](http://www.ic.unicamp.br/~celio/mc404-2013/arm-examples/division/div.c) (ARM, 1994)
* [Interactive compiler](http://gcc.godbolt.org/) (Matt Godbolt)
* [Superoptimizing Compilers - feasibility study](http://superoptimization.org/wiki/Superoptimizing_Compilers) (Embecosm)
