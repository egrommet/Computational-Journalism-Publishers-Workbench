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

# LyX
sudo zypper install -y \
  enchant-devel \
  aspell-devel

# Bluefish
sudo zypper install -y \
  jing
