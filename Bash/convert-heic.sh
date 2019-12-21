#!/bin/sh

for file in *.heic; do hieif-convert -q 100 $file ${file/%.heic/.jpg}; done
