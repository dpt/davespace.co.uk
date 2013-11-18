section: python
title: rerename.py
subtitle: Allows you to rename files using regular expressions.
date: 2013-04-07
tags: Script, Python
layout: page
pageOrder: 1010
----

[rerename.py](/software/rerename.py) is a small Python script to bulk rename files and directories using [regular expressions](http://www.regular-expressions.info/).

## Example

It’s always best to try out a rename operation before doing it for real with `-p` to get a preview of what will happen:

```
$ rerename.py -p '(.*).html' '\1.xhtml' .
index.html -> index.xhtml
remove-duplicates.html -> remove-duplicates.xhtml
rerename.html -> rerename.xhtml
resetjpegdpi.html -> resetjpegdpi.xhtml
```

If you’re happy with that then you can run it for real without `-p`:

```
$ rerename.py '(.*).html' '\1.xhtml' .
index.html -> index.xhtml
remove-duplicates.html -> remove-duplicates.xhtml
rerename.html -> rerename.xhtml
resetjpegdpi.html -> resetjpegdpi.xhtml
3 objects renamed
```
