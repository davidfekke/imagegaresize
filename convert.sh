#!/bin/bash
for f in *.HEIC
do
echo "Working on file $f"
heif-convert $f jpegs/$f.jpg
done
for file in jpegs/*.JPG; do
  convert "$file" -rotate 180 "${file%.JPG}"_rotated.JPG
done