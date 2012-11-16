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

# set up stuff everyone needs
mkdir -p ~/local/src
mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/pixmaps
cat bashrc >> ~/.bashrc
source ~/.bashrc

# cleanup
./cleanup.bash

for i in \
  Profiling \
  Redis-Source \
  TexLive \
  R-patched \
  RStudio \
  Libraries \
  eBook-editing \
  PDF-Tools \
  Perl-Modules \
  Perl-Local-Library \
  Ruby-Gems \
  GoogleRefine \
  Maqetta \
  Finance
do
  pushd $i
  ./install-all.bash
  popd
done
