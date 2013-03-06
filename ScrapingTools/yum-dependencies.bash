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

sudo yum install -y \
  python-mechanize \
  rubygem-mechanize \
  perl-WWW-Mechanize \
  perl-WWW-Mechanize-GZip \
  ImageMagick \
  ImageMagick-doc \
  GraphicsMagick \
  baekmuk-ttf-fonts-ghostscript \
  ghostscript-chinese \
  ghostscript-chinese-zh_CN \
  ghostscript-chinese-zh_TW \
  ghostscript-doc \
  ghostscript-fonts \
  ghostscript \
  ghostscript-gtk \
  pdf-tools \
  pdfchain \
  pdfcrack \
  pdfedit \
  pdfgrep \
  pdfjam \
  pdfmerge \
  pdfmod \
  pdfresurrect \
  pdfshuffler \
  pdftk \
  poppler \
  poppler-data \
  poppler-utils \
  perl-Text-PDF \
  rubygem-pdf-reader \
  rubygem-pdf-reader-doc \
  tesseract \
  tesseract-devel \
  tesseract-langpack-bul \
  tesseract-langpack-cat \
  tesseract-langpack-ces \
  tesseract-langpack-chi_sim \
  tesseract-langpack-chi_tra \
  tesseract-langpack-dan \
  tesseract-langpack-dan-frak \
  tesseract-langpack-deu \
  tesseract-langpack-deu-frak \
  tesseract-langpack-ell \
  tesseract-langpack-fin \
  tesseract-langpack-fra \
  tesseract-langpack-hun \
  tesseract-langpack-ind \
  tesseract-langpack-ita \
  tesseract-langpack-jpn \
  tesseract-langpack-kor \
  tesseract-langpack-lav \
  tesseract-langpack-lit \
  tesseract-langpack-nld \
  tesseract-langpack-nor \
  tesseract-langpack-pol \
  tesseract-langpack-por \
  tesseract-langpack-ron \
  tesseract-langpack-rus \
  tesseract-langpack-slk \
  tesseract-langpack-slv \
  tesseract-langpack-spa \
  tesseract-langpack-srp \
  tesseract-langpack-swe \
  tesseract-langpack-swe-frak \
  tesseract-langpack-tgl \
  tesseract-langpack-tur \
  tesseract-langpack-ukr \
  tesseract-langpack-vie

./install-docsplit-gem.bash
