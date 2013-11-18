#!/usr/bin/env python
#
# rerename.py: rename objects using regexps
#
# by dpt
#
# Options: -d use default patterns
#          -l lower case output name
#          -p preview
#          -r recurse
#

import getopt
import os
import re
import sys

def usage():
    print 'Usage: rerename.py [OPTION]... <from regex> <to regex> DIRECTORY'
    sys.exit(1)

def main(args):
    patterns = (('[ _]',  '.'), # convert space or underscore to dot
                ('\.-\.', '-'), # convert .-. to dash
                (',',     '' )) # remove commas

    try:
        opts,files = getopt.getopt(args, 'dlpr')
    except getopt.GetoptError:
        usage()
    
    defaults = preview = recurse = lowercase = 0
    for opt,val in opts:
        if   opt == '-d': defaults   = 1
        elif opt == '-l': lowercase  = 1
        elif opt == '-p': preview    = 1
        elif opt == '-r': recurse    = 1
    
    if defaults:
        if len(files) < 1:
            usage()

        path = files[0]
        
    else:
        if len(files) < 3:
            usage()
        
        left,right,path = files[0:3]

        patterns = ((left,right),) # overwrite default patterns
   
    path = os.path.abspath(path)
    
    c = 0
    
    for root,dirs,files in os.walk(path, topdown=True):
        for name in files + dirs:
            newname = name

            for left,right in patterns:
                newname = re.sub(left, right, newname)

            if newname == name:
                continue

            if lowercase:
                newname = newname.lower()
            
            name1 = os.path.join(root, name)
            name2 = os.path.join(root, newname)
            
            if os.path.exists(name2):
                print '%s -> %s already exists' % (name, newname)
            else:
                print '%s -> %s' % (name, newname)
                if not preview:
                    try:
                        os.renames(name1, name2)
                        c += 1
                    except OSError:
                        pass
        
        if not recurse:
            del dirs[:] # stop recursion
    
    if not preview:
        print '%d objects renamed' % c

if __name__ == '__main__':
    main(sys.argv[1:])

