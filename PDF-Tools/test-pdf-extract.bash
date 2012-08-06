#! /bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

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
