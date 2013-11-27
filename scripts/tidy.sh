#!/bin/bash

if [ $# -ne 1 ]
then
    echo "Usage: `basename $0` <-edit|-squish>"
    exit 65
fi

HTML=`find . -name "*.html"`
CSS=`find . -name "*.css"`

if [ $1 == "-edit" ]
then
    HTMLTIDYOPTS="-q -m -i -w 76"
    CSSTIDYOPTS="--template=low"
elif [ $1 == "-squish" ]
then
    HTMLTIDYOPTS="-q -m -w 997"
    CSSTIDYOPTS="--template=high"
    find . -type f -not \( -iname "*.html" -or -iname "*.css" -or -iname "*.png" -or -iname "*.gif" -or -iname "*.zip" -or -iname "*.pdf" -or -iname "*.py" -or -iname "*.jpg" -or -iname "*.ico" -or -iname "*.sh" \) | xargs rm -rf
    prune.py .
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
