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

# Sigil
sudo yum install -y \
  pitivi \
  gtk-recordmydesktop \
  intltool \
  FlightCrew-devel \
  xerces-c-devel \
  pcre-devel \
  pcre-tools \
  hunspell-devel

# Calibre
sudo yum install -y \
  pyicu \
  icu \
  python-dns \
  python-netifaces \
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
  python-cssselect \
  python-BeautifulSoup \
  podofo \
  podofo-devel \
  libwmf-devel \
  chmlib-devel \
  libicu-devel

# LyX
sudo yum install -y \
  enchant-devel \
  aspell-devel

# Bluefish
sudo yum install -y \
  jing
