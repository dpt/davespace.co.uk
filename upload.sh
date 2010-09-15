#!/bin/bash

# set permissions
#
find . \( -type d -not -name CVS -print0 \) | xargs -0 chmod 755
find . \( -type d -name CVS -prune \) -or \( -type f -print0 \) | xargs -0 chmod 644
find . \( -type f -name "*.sh" -print0 \) | xargs -0 chmod 755

# -C        auto-ignore files in the same way CVS does
# -r        recurse
# -t        preserve times
# -v        verbose
# -z        compress during transfer
#
# --delete  is only required when deleting anything which doesn't exist on
#           the server
#
rsync -Crtvz --exclude="source" --exclude="CVS" --exclude="Thumbs.db" --exclude="*.hsc" --exclude="*.tmp" --exclude="hsc.prefs" --include="*.html" . octopus.pepperfish.net:websites/davespace.co.uk/www/html

exit 0

