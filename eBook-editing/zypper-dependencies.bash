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
sudo zypper install -y \
  gtk-recordMyDesktop \
  pitivi \
  intltool \
  libxerces-c-devel \
  pcre-devel \
  pcre-tools \
  hunspell-devel

# Calibre
sudo zypper install -y \
  icu \
  icu-data \
  libicu-devel \
  python-dnspython \
  ImageMagick-devel \
  python-netifaces \
  sqlite3-devel \
  python-imaging \
  python-qt4-devel \
  python-mechanize \
  xdg-utils \
  python-lxml \
  python-dateutil \
  python-cssutils \
  python-beautifulsoup \
  podofo \
  libpodofo-devel \
  libwmf-devel \
  libmtp-devel \
  chmlib-devel

# LyX
sudo zypper install -y \
  enchant-devel \
  aspell-devel

# Bluefish
sudo zypper install -y \
  jing
