#! /bin/bash

zypper addrepo -cf http://download.opensuse.org/repositories/Documentation:/Tools/openSUSE_12.2/Documentation:Tools.repo
zypper refresh

zypper install -y \
  ImageMagick \
  ImageMagick-doc \
  ImageMagick-extra \
  GraphicsMagick \
  poppler-tools \
  tesseract \
  tesseract-devel \
  tesseract-traineddata-bul \
  tesseract-traineddata-cat \
  tesseract-traineddata-ces \
  tesseract-traineddata-chi_sim \
  tesseract-traineddata-chi_tra \
  tesseract-traineddata-dan \
  tesseract-traineddata-dan-frak \
  tesseract-traineddata-deu \
  tesseract-traineddata-ell \
  tesseract-traineddata-eng \
  tesseract-traineddata-fin \
  tesseract-traineddata-fra \
  tesseract-traineddata-hun \
  tesseract-traineddata-ind \
  tesseract-traineddata-ita \
  tesseract-traineddata-jpn \
  tesseract-traineddata-kor \
  tesseract-traineddata-lav \
  tesseract-traineddata-lit \
  tesseract-traineddata-nld \
  tesseract-traineddata-nor \
  tesseract-traineddata-pol \
  tesseract-traineddata-por \
  tesseract-traineddata-ron \
  tesseract-traineddata-rus \
  tesseract-traineddata-slk \
  tesseract-traineddata-slv \
  tesseract-traineddata-spa \
  tesseract-traineddata-srp \
  tesseract-traineddata-swe \
  tesseract-traineddata-tgl \
  tesseract-traineddata-tur \
  tesseract-traineddata-ukr \
  tesseract-traineddata-vie
