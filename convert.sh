#!/bin/bash
for f in *.HEIC
do
echo "Working on file $f"
heif-convert $f jpegs/$f.jpg
done
cd jpegs
for file in *.jpg; do
  convert "$file" -rotate 180 "${file%.JPG}"_rotated.JPG
done