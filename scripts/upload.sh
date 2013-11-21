#!/bin/bash
#
# Upload davespace.co.uk to pepperfish.
#
# by dpt

DIR=generated

# set permissions
#
find $DIR \( -type d -not -name CVS -print0 \) | xargs -0 chmod 755
find $DIR \( -type d -name CVS -prune \) -or \( -type f -print0 \) | xargs -0 chmod 644
find $DIR \( -type f -name "*.sh" -print0 \) | xargs -0 chmod 755

# -C        auto-ignore files in the same way CVS does
# THIS SEEMS TO DELETE ALL THE HTML FILES... GREAT

# -r        recurse
# -t        preserve times
# -v        verbose
# -z        compress during transfer
#
# --delete  is only required when deleting anything which doesn't exist on
#           the server
#
rsync -rtvz $DIR/* octopus.pepperfish.net:websites/davespace.co.uk/www/html/newsite/ \
  --exclude-from=upload.excludes \
  --delete \
  --delete-after \
  --delete-excluded

exit 0

