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

sudo -H yum install -y \
  apvlv \
  baekmuk-ttf-fonts-ghostscript \
  diffpdf \
  ghostscript \
  ghostscript-chinese \
  ghostscript-chinese-zh_CN \
  ghostscript-chinese-zh_TW \
  ghostscript-doc \
  ghostscript-fonts \
  ghostscript-gtk \
  GraphicsMagick \
  htmldoc \
  ImageMagick \
  ImageMagick-doc \
  mupdf \
  pdfchain \
  pdfcrack \
  pdfedit \
  pdfgrep \
  pdfmerge \
  pdfmod \
  pdfresurrect \
  pdfshuffler \
  pdftk \
  pdf-tools \
  perl-PDF-API2 \
  perl-PDF-Create \
  perl-PDF-Haru \
  perl-PDF-Reuse \
  perl-Text-PDF \
  perl-WWW-Mechanize \
  perl-WWW-Mechanize-GZip \
  podofo \
  poppler \
  poppler-data \
  poppler-utils \
  pstoedit \
  pyPdf \
  pypoppler \
  python-mechanize \
  python-poppler-qt4 \
  python-reportlab \
  qpdf \
  qpdf-doc \
  rubygem-mechanize \
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
  tesseract-langpack-vie \
  texlive-pdfjam \
  texlive-pdfjam-doc

./install-docsplit-gem.bash
