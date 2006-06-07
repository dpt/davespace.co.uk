#!/bin/bash

if [ $# -ne 1 ]
then
    echo "Usage: `basename $0` <-edit|-squish>"
    exit 65
fi

HTML=`find . -name *.html`
CSS=`find . -name *.css`

if [ $1 == "-edit" ]
then
    HTMLTIDYOPTS="-m -i -w 76"
    CSSTIDYOPTS="--template=low"
elif [ $1 == "-squish" ]
then
    HTMLTIDYOPTS="-m -w 997"
    CSSTIDYOPTS="--template=high"
else
    echo "Usage: `basename $0` <-edit|-squish>"
fi

for i in $HTML;
do
    echo $i;
    tidy $HTMLTIDYOPTS $i;
done

for i in $CSS;
do
    echo $i;
    csstidy $i $CSSTIDYOPTS $i;
done

exit 0

#
# rsync -r --delete . pike.pepperfish.net:websites/davespace.co.uk/www/html
#
# the --delete is only required when deleting anything which doesn't exist on
# the server

