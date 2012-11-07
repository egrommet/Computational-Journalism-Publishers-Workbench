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
for i in rc _profile
do
  cat bash${i} >> ~/.bash${i}
  source bash${i}
done

# get babysitting out of the way for openSUSE :-(
if [ -e "/usr/bin/zypper" ]
then
  ./zypper-repositories.bash
fi

# cleanup and dependencies
./cleanup.bash
./install-dependencies.bash

for i in \
  Profiling \
  Redis-Source \
  TexLive \
  R-patched \
  RStudio \
  eBook-editing \
  PDF-Tools \
  Perl-Modules \
  Perl-Local-Library \
  Ruby-Gems \
  GoogleRefine \
  Maqetta
do
  pushd $i
  ./install-all.bash
  popd
done
