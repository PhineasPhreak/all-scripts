#!/bin/sh

# Install this package :
# libheif1 (ISO/IEC 23008-12:2017 HEIF file format decoder - shared library)
# libheif-examples (ISO/IEC 23008-12:2017 HEIF file format decoder - examples)

for file in *.heic; do hieif-convert -q 100 $file ${file/%.heic/.jpg}; done

