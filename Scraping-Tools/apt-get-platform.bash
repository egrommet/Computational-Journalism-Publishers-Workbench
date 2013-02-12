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

../common/authenticate.bash
sudo apt-get install -y \
  libwww-mechanize-gzip-perl \
  libwww-mechanize-perl \
  python-mechanize \
  ruby-mechanize \
  imagemagick \
  imagemagick-doc \
  graphicsmagick \
  poppler-utils \
  tesseract-ocr \
  tesseract-ocr-afr \
  tesseract-ocr-ara \
  tesseract-ocr-aze \
  tesseract-ocr-bel \
  tesseract-ocr-ben \
  tesseract-ocr-bul \
  tesseract-ocr-cat \
  tesseract-ocr-ces \
  tesseract-ocr-chi-sim \
  tesseract-ocr-chi-tra \
  tesseract-ocr-chr \
  tesseract-ocr-dan \
  tesseract-ocr-deu \
  tesseract-ocr-deu-frak \
  tesseract-ocr-ell \
  tesseract-ocr-eng \
  tesseract-ocr-enm \
  tesseract-ocr-epo \
  tesseract-ocr-equ \
  tesseract-ocr-est \
  tesseract-ocr-eus \
  tesseract-ocr-fin \
  tesseract-ocr-fra \
  tesseract-ocr-frk \
  tesseract-ocr-frm \
  tesseract-ocr-glg \
  tesseract-ocr-heb \
  tesseract-ocr-hin \
  tesseract-ocr-hrv \
  tesseract-ocr-hun \
  tesseract-ocr-ind \
  tesseract-ocr-isl \
  tesseract-ocr-ita \
  tesseract-ocr-ita-old \
  tesseract-ocr-jpn \
  tesseract-ocr-kan \
  tesseract-ocr-kor \
  tesseract-ocr-lav \
  tesseract-ocr-lit \
  tesseract-ocr-mal \
  tesseract-ocr-mkd \
  tesseract-ocr-mlt \
  tesseract-ocr-msa \
  tesseract-ocr-nld \
  tesseract-ocr-nor \
  tesseract-ocr-osd \
  tesseract-ocr-pol \
  tesseract-ocr-por \
  tesseract-ocr-ron \
  tesseract-ocr-rus \
  tesseract-ocr-slk \
  tesseract-ocr-slk-frak \
  tesseract-ocr-slv \
  tesseract-ocr-spa \
  tesseract-ocr-spa-old \
  tesseract-ocr-sqi \
  tesseract-ocr-srp \
  tesseract-ocr-swa \
  tesseract-ocr-swe \
  tesseract-ocr-tam \
  tesseract-ocr-tel \
  tesseract-ocr-tgl \
  tesseract-ocr-tha \
  tesseract-ocr-tur \
  tesseract-ocr-ukr \
  tesseract-ocr-vie
