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

# ggobi
urpme --auto --auto-orphans libgraphviz-devel
urpmi --auto --no-suggests \
  libtool \
  libcairo-devel \
  gtk2-devel \
  libzlib-devel \
  libfreeglut-devel \
  libltdl-devel \
  libcanberra-gtk-devel \
  libxml2-devel