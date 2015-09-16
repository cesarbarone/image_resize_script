#!/bin/bash
for file in *.jpg
do
    convert  -resize 640X480  "$file"  small_"$file"
done
