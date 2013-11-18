section: python
title: resetjpegdpi.py
subtitle: Resets the header of a set of JPEGs.
date: 2013-04-07
tags: Script, Python
layout: page
pageOrder: 1020
----

Even if you run your JPEGs through `jpegtran -optimise` then sometimes they can differ in the initial header bytes. [This](../software/resetjpegdpi.py) small Python script resets the version, units and density fields of a (directory of) JPEGs. Once its run then [remove-duplicates.py](remove-duplicates.html) will have a better chance of eliminating the duplicate images.

## Example

To recursively process all JPEGs within a directory:

```
$ resetjpegdpi.py ./photos/
```
