section: ARM
title: Overview
icon: rocket
date: 2012-03-03
tags: ARM
layout: page
pageOrder: 0
----

## Training Courses

These pages contain two training courses originally written to introduce my former colleagues at [Picsel](http://www.picsel.com/) to the joys of programming in [ARM](http://www.arm.com/) assembly language.

The two courses are:

* [Introduction to ARM](introduction-to-arm/index.html)
  * The first course introduces the reader to ARM assembly language. It goes on to explain the development of the ARM architecture and the capabilities of the various ARM CPU cores.
  * After completing this course you should be able to understand ARM code well enough to understand the examples in the next.
* [Efficient C for ARM](efficient-c-for-arm/index.html)
  * The second course is concerned with tuning. It looks at how we can produce more efficient ARM code by altering the way we write our C code.

The courses were presented to over 70 engineers in the UK (Glasgow, Edinburgh, Reading), Malaysia (Kuala Lumpur) and Korea (Seoul).

Each course would usually take three hours to deliver. The course would be presented sandwich style: two lecture parts and a delicious centre filling where the student gets to experiment with some small routines.

### Some caveats

The courses have been (steadily, manually) converted across from the original PowerPoint slides and separate trainer’s notes sheet I used when presenting the courses. This may show in the terseness of some of the pages. Detail is usually sacrificed for the sake of making a point.

Some closely related sections have been merged together; some have been left separate. Some of the pages are of substantially different lengths.

Over time I’ll rework the content to better suit its new format.

### Toolchains

The courses were written for an environment where the [ARM Developer Suite](http://www.keil.com/support/legacy.asp) (ADS) was available, so all of the assembly examples use ARM’s assembly language format. If you intend to try the examples on a more affordable compiler, such as [GCC](http://gcc.gnu.org/) you will need to use [GNU ARM assembly language syntax](http://microcross.com/GNU-ARM-Assy-Quick-Ref.pdf).

The assembly language examples were compiled with (the now very old pair of) ADS 1.2’s armcc and GCC 2.95.2. You will find that other compilers produce different code, of varying quality. (In my experience WinCE’s compiler in particular generates some particularly poor code).

### Credits

Many thanks go to the following kind souls for reviewing the content and making suggestions:

* Alex Macfarlane Smith
* Christopher Bazley
* Graham Borland
* John Tytgat
* John-Mark Bell
* Justin Fletcher
* Matt Holgate
* Michael Drake
* Robin Watts
* Stewart Brodie

### Acknowledgements

ARM© is a trademark of [ARM](http://www.arm.com/).
