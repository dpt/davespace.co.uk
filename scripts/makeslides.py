#!/usr/bin/env python
#
# makeslides.py: add slide structure into markdown processed blog posts
#
# by dpt

import re
import sys

start = re.compile('<p>%% (\w+)</p>')
inside = 0

for line in sys.stdin:
    match = start.match(line)
    if match:
        if inside:
            print('</div>')
            print('</section>')
        print('<section>')
        print('<div class="%s">' % (match.group(1).lower()))
        inside = 1
    else:
        sys.stdout.write(line)

if inside:
    print('</div>')
    print('</section>')
