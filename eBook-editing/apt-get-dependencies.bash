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
apt-get install -y \
  pitivi \
  gtk-recordmydesktop \
  intltool \
  libxerces-c-dev \
  libpcre3-dev \
  libhunspell-dev \
  zlib-bin

# Calibre
apt-get install -y \
  python-pyicu \
  python-dns \
  libmagick++-dev \
  libsqlite3-dev \
  python-imaging \
  python-qt4 \
  python-qt4-dev \
  pyqt4-dev-tools \
  libmtp-dev \
  python-mechanize \
  xdg-utils \
  python-lxml \
  python-dateutil \
  python-cssutils \
  python-beautifulsoup \
  podofo \
  libpodofo-dev \
  libwmf-dev \
  libchm-dev \
  libicu-dev

# LyX
apt-get install \
  libenchant-dev \
  libaspell-dev

# Bluefish
apt-get install -y \
  jing
