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

echo "Adding repositories as 'root'"
echo "You will need to authenticate"
sudo zypper addrepo -cf --gpg-auto-import-keys \
  http://download.opensuse.org/repositories/Documentation:/Tools/openSUSE_12.2/Documentation:Tools.repo # Tesseract lives here

echo "Answer 'a' to 'Do you want to reject the key, trust temporarily, or trust always?' below."
sudo zypper refresh

sudo zypper install -y \
  ImageMagick \
  ImageMagick-doc \
  ImageMagick-extra \
  GraphicsMagick \
  poppler-tools \
  tesseract \
  tesseract-devel \
  tesseract-traineddata-american \
  tesseract-traineddata-arabic \
  tesseract-traineddata-bulgarian \
  tesseract-traineddata-catalan \
  tesseract-traineddata-cherokee \
  tesseract-traineddata-chinese_simplified \
  tesseract-traineddata-chinese_traditional \
  tesseract-traineddata-czech \
  tesseract-traineddata-danish \
  tesseract-traineddata-danish_fraktur \
  tesseract-traineddata-dutch \
  tesseract-traineddata-finnish \
  tesseract-traineddata-french \
  tesseract-traineddata-german \
  tesseract-traineddata-german_fraktur \
  tesseract-traineddata-greek \
  tesseract-traineddata-hebrew \
  tesseract-traineddata-hebrew_community \
  tesseract-traineddata-hindi \
  tesseract-traineddata-hungarian \
  tesseract-traineddata-indonese \
  tesseract-traineddata-italian \
  tesseract-traineddata-japanese \
  tesseract-traineddata-korean \
  tesseract-traineddata-latvian \
  tesseract-traineddata-lithuanian \
  tesseract-traineddata-norwegian \
  tesseract-traineddata-orientation_and_script_detection \
  tesseract-traineddata-polish \
  tesseract-traineddata-portuguese \
  tesseract-traineddata-romanian \
  tesseract-traineddata-russian \
  tesseract-traineddata-serbian_latin \
  tesseract-traineddata-slovak \
  tesseract-traineddata-slovak_fraktur \
  tesseract-traineddata-slovene \
  tesseract-traineddata-spanish \
  tesseract-traineddata-swedish \
  tesseract-traineddata-swedish_fraktur \
  tesseract-traineddata-tagalog \
  tesseract-traineddata-thai \
  tesseract-traineddata-turkish \
  tesseract-traineddata-ukrainian \
  tesseract-traineddata-vietnamese
