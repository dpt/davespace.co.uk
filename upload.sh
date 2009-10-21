#!/bin/bash

# set permissions
#
find . \( -type d -not -name CVS \) | xargs chmod 755
find . \( -type d -name CVS -prune \) -or \( -type f -print \) | xargs chmod 644

# -C        auto-ignore files in the same way CVS does
# -r        recurse
# -t        preserve times
# -v        verbose
# -z        compress during transfer
#
# --delete  is only required when deleting anything which doesn't exist on
#           the server
#
rsync -Crtvz --exclude="Thumbs.db" . octopus.pepperfish.net:websites/davespace.co.uk/www/html

exit 0

