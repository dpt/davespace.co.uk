#!/usr/bin/env python
#
# resetjpegdpi.py: reset the version, units and density fields of JPEGs
#
# by dpt
#

import array
import locale
import os
import struct
import sys

Hidden = ('Thumbs.db',)
Extension = os.extsep + 'jpg'

# SOI, APP0, length (16), 'JFIF\0'
Signature = array.array('c')
Signature.fromstring('\xff\xd8\xff\xe0\x00\x10\x4a\x46\x49\x46\x00')

Format = '>hbhh'

NewValues = array.array('c')
NewValues.fromstring(struct.pack(Format, 0x102,0,100,100))

def usage():
    print 'Usage: resetjpegdpi.py DIRECTORY'
    sys.exit(1)

def main(argv):
    if len(argv) < 1:
        usage()

    path = os.path.abspath(argv[0])

    for root, dirs, files in os.walk(path):
        for name in files:
            if name in Hidden: continue
            if not name.endswith(Extension): continue

            n = os.path.join(root, name)
            f = file(n)
            f.seek(0,2); length = f.tell(); f.seek(0,0)
            a = array.array('c')
            a.fromfile(f, length)
            f.close()

            if a[:11] != Signature:
                print '%s has no signature' % (n)
                continue

            (version,units,xdensity,ydensity) = struct.unpack(Format, a[11:18])

            if (version,units,xdensity,ydensity) == (0x102,0,100,100):
                print '%s ok' % (n)
            else:

                print '%s was (%x,%d,%d,%d)' % (n, version,units,xdensity,ydensity)
                
                a[11:18] = NewValues

                n = os.path.join(root, name)
                f = file(n, "wb")
                f.write(a)
                f.close()

            del a

if __name__ == '__main__':
    main(sys.argv[1:])

