#! /bin/bash

# Download document
curl -L http://comjnl.oxfordjournals.org/content/14/1/96.full.pdf > Michie.pdf

# Convert to HTML / PNG with "pdftohtml" from "poppler-tools"
rm -fr HTML; mkdir -p HTML; pushd HTML
pdftohtml ../Michie.pdf Michie
popd

# Convert PNG to TIFF with ImageMagick "convert"
rm -fr TIFF; mkdir -p TIFF; pushd TIFF
for i in ../HTML/*.png; do
  BASE=`echo ${i}|sed 's;\.png;;'|sed 's;^.*HTML/;;'`
  convert ${i} ${BASE}.tiff
done; popd

# Convert TIFF to TEXT with "tesseract"
rm -fr TEXT; mkdir -p TEXT; pushd TEXT
for i in ../TIFF/*.tiff; do
  BASE=`echo ${i}|sed 's;\.tiff;;'|sed 's;^.*TIFF/;;'`
  tesseract ${i} ${BASE}
done; popd
