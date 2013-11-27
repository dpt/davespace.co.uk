#!/usr/bin/env python
#
# remove-duplicates.py: deletes files which have duplicate size
#                       and md5sum
#
# by dpt
#

import md5
import os
import stat
import sys

Ignore = ('Thumbs.db',)

def getmd5(filename):
    m = md5.new()
    m.update(file(filename, 'rb').read(-1))
    return m.hexdigest()

def usage():
    print 'Usage: remove-duplicates.py DIRECTORY'
    sys.exit(1)

def main(argv):
    if len(argv) < 1:
        usage()

    dir = os.path.abspath(argv[0])

    print 'Reading sizes...'

    # Create a dictionary keyed by size, with each entry holding a list of
    # filenames of that size.

    data = {}
    
    for root, dirs, files in os.walk(dir):
        for name in files:
            if name in Ignore: continue
            path = os.path.join(root, name)
            size = os.path.getsize(path)
            if not data.has_key(size):
                data[size] = []

            data[size].append(path)

    # For each key, checksum each list entry and compare.

    removed = 0

    for k in data.keys():
        dk = data[k]
        if len(dk) > 1:
            #print k, len(dk)
            s = {}
            for j in dk:
                sum = getmd5(j)
                if s.has_key(sum):
                    print j, 'is a dupe of', s[sum]
                    try:
                        os.remove(j)
                        removed += 1
                    except:
                        pass
                else:
                    s[sum] = j

    print 'Done, %d files removed.' % (removed)

if __name__ == '__main__':
    main(sys.argv[1:])

