#!/bin/bash
images_directory="$1"
cd "$images_directory"

for file in *.jpg
do
  echo converting "$file" ...
  convert  -resize 640X480  "$file" "$file"
done

cd -