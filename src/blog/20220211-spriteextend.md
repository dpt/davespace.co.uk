title: "BEWARE 20,000 VOLTS" – The Joy of SpriteExtend
icon: bolt
date: 2022-02-11
tags: RISC OS, Article
----

<style type="text/css" rel="stylesheet">
IMG { border-radius: 1em; }
</style>

<!-- begin summary -->

#### Background

The Acorn operating system RISC OS is built from a kernel and a collection of software components called _relocatable modules_. Its native bitmap format is the _sprite_.

![Dawn](images/sprite1.png)

#### SpriteExtend

RISC OS’s most fundamental sprite drawing routines live alongside the other VDU handling within the OS kernel. However, that’s not enough to support all of the defined sprite operations. A support module called _SpriteExtend_ enters the fray: it hooks into the OS and steps in when required to implement the extended `OS_SpriteOp` operations.

<!-- end summary -->

Now, SpriteExtend is a bit of a meta beast. You might expect it to provide a set of routines implementing the extended sprite operations, which it does, but it also contains a **sprite plotting routine generator**. A sort of specialised compiler that can generate any required sprite plotting routine. This is required because RISC OS is very flexible with its bitmap handling. Across the range of RISC OS hardware you can have 1, 2, 4, 8, 16 or 32bpp screen modes (plus variants for different pixel formats). Sprites can be in any of these modes (plus extra formats like CMYK) and _any_ of these sprites can draw into _any_ screen mode. The combinatorial explosion of to’s and from’s would require hundreds of routines to be written and so is better served with a single multiple-case generator.

![Day](images/sprite2.png)

#### It Gets Funner

SpriteExtend is a RISC OS module, and modules have traditionally been written in ARM assembly language. If you want to write a module in C you compile your code in a special compiler mode (which lets it relocate) then use a tool called CMHG (bless you) to generate a module header. Once linked, that binds the lot together into a useful modular blob.

But SpriteExtend’s maintainers didn’t go down the straight C module route: it’s still an assembly module, yet the sprite plotting routine generator is still written in C. So SpriteExtend contains just enough of the C runtime code to support the generator. And that C code? It directly generates machine code. It's a JIT.

So an assembly module houses a C routine which generates, then executes, machine code.

And this is why at the top of one of the main source files it says `DANGER 10000 VOLTS: …` and later on, when it got even scarier, that was supplemented by a `BEWARE 20000 VOLTS: …` warning.

![Dusk](images/sprite3.png)

#### One Last Thing

Oh yeah, did I mention that SpriteExtend also has a realtime JPEG renderer in it? _The Aristocrats_.

![Night](images/sprite4.png)
