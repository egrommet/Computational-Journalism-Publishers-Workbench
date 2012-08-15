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

# Sigil beta
yum install -y \
  pitivi \
  gtk-recordmydesktop \
  jabref \
  intltool \
  FlightCrew-devel \
  xerces-c-devel \
  pcre-devel \
  pcre-tools \
  hunspell-devel \
  minizip-devel

# Calibre
yum install -y \
  pyicu \
  icu \
  python-dns \
  ImageMagick-devel \
  sqlite-devel \
  python-imaging-devel \
  PyQt4-devel \
  libmtp-devel \
  python-mechanize \
  xdg-utils \
  python-lxml \
  python-dateutil \
  python-cssutils \
  python-BeautifulSoup \
  podofo-devel \
  libwmf-devel \
  chmlib-devel \
  libicu-devel

# LyX
yum install \
  enchant-devel \
  aspell-devel

# Bluefish
yum install -y \
  jing
