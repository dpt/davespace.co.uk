#!/bin/bash

# -C        auto-ignore files in the same way CVS does
# -r        recurse
# -t        preserve times
# -v        verbose
# -z        compress during transfer
#
# --delete  is only required when deleting anything which doesn't exist on
#           the server

rsync -Crtvz --exclude="Thumbs.db" . octopus.pepperfish.net:websites/davespace.co.uk/www/html

exit 0

