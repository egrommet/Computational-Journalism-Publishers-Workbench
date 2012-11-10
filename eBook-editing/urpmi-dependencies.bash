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
sudo urpmi --auto \
  gtk-recordmydesktop \
  pitivi \
  intltool \
  libxerces-c-devel \
  libpcre-devel \
  libhunspell-devel

# Calibre
sudo urpmi --auto \
  icu \
  libicu-devel \
  libchm-devel \
  python-dnspython \
  libmagick-devel \
  libsqlite3-devel \
  python-imaging-devel \
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
  python-chm \
  chmlib

# LyX
sudo urpmi --auto \
  libenchant-devel \
  libaspell-devel

# Bluefish
sudo urpmi --auto \
  gettext-devel \
  jing08
