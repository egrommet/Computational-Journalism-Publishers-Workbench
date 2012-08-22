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

urpmi --auto --no-suggests \
  imagemagick \
  imagemagick-doc \
  graphicsmagick \
  graphicsmagick-doc \
  poppler \
  poppler-data \
  libtesseract3 \
  tesseract \
  tesseract-deu \
  tesseract-deu-f \
  tesseract-devel \
  tesseract-eng \
  tesseract-fra \
  tesseract-ita \
  tesseract-nld \
  tesseract-por \
  tesseract-spa \
  tesseract-vie
