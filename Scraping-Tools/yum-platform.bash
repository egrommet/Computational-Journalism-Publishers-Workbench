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
sudo yum install -y \
  python-mechanize \
  rubygem-mechanize \
  perl-WWW-Mechanize \
  perl-WWW-Mechanize-GZip \
  ImageMagick \
  ImageMagick-doc \
  GraphicsMagick \
  poppler-utils \
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
