#!/bin/bash -e
#
# watermark.sh
#
# by dpt

here=$(dirname $0)

mkdir -p watermarked
for i in *.png *.jpg; do
    gm composite -gravity SouthEast -geometry +2+2 ${here}/watermark.png $i watermarked/$i
done

