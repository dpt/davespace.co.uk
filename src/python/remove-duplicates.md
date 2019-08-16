section: Python
title: remove-duplicates.py
subtitle: Deletes duplicate files with the same checksum.
date: 2013-04-07
tags: Script, Python
pageOrder: 1000
----

[remove-duplicates.py](../software/remove-duplicates.py) is a small Python script which deletes files with the same size and MD5 checksum.

It recursively processes the specified directory and its sub-directories.

If you want to preserve certain files, you need to ensure that they’re last in the directory list.

## Example

To recursively remove all duplicate files from the current directory:

```
$ remove-duplicates.py ./photos/
```
