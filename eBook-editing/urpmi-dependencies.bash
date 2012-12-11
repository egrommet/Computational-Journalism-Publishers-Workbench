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
sudo urpmi --auto --no-suggests \
  gtk-recordmydesktop \
  pitivi \
  intltool \
  libxerces-c-devel \
  libpcre-devel \
  libhunspell-devel

# LyX
sudo urpmi --auto --no-suggests \
  libenchant-devel \
  libaspell-devel

# Bluefish
sudo urpmi --auto --no-suggests \
  gettext-devel \
  jing08
