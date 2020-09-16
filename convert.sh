#!/bin/bash
for f in *.HEIC
do
echo "Working on file $f"
heif-convert $f jpegs/$f.jpg
done