#!/usr/bin/env python3
#
# mkcontents.py: add a contents section into markdown
#
# by dpt

import os
import pickle
import re
import subprocess
import sys
import string

# suck in whole file
content = sys.stdin.readlines()

contents = []

# prepare buildID table
d = {key: key.lower() for key in string.ascii_lowercase}
d.update({key: '-' for key in string.whitespace + string.punctuation})
idtable = str.maketrans(d)

for rawline in content:
    cooked = rawline.rstrip()
    if re.match("^## ", cooked):
        contents.append((cooked[3:], []))
    elif re.match("^### ", cooked):
        contents[-1][1].append((cooked[4:], []))
    # could generalise this

def buildID(s):
    s = s.translate(idtable).lower()
    s = s.replace("----", "---").replace("---", "--").replace("--", "-") # ick
    return s.rstrip("-")

# gencontents accepts a list of indices but Markdown can't support "1.2.3" etc.
def gencontents(indices, contents):
    for c in contents:
        print(" " * (len(indices) - 1) * 4, end="")
        print("%d." % indices[-1], end="")
        print(" [%s](#%s)" % (c[0], buildID(c[0])))
        gencontents(indices + [1], c[1])
        indices[-1] += 1

# Insert the generated contents before the first "## Heading"
done = False
for rawline in content:
    cooked = rawline.rstrip()
    if not done and re.match("^## ", cooked):
        print("## Table of Contents")
        contents = gencontents([1], contents)
        print("")
        print("")
        done = True
    print(cooked)
