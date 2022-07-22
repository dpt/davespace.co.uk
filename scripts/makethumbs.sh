#!/bin/bash

#find . -name '*.jpg' -o -name '*.JPG' | xargs -I{} mogrify -resize 1024">" -quality 40 {}
gm mogrify -size 544 -output-directory thumbs -resize 544 -unsharp 0.5x0.5+0.5+0.008 *.png
