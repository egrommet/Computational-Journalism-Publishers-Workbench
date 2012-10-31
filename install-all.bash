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
mkdir -p ${HOME}/local/src
mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/pixmaps
cp bashrc ~/.bashrc
source ~/.bashrc

# get babysitting out of the way for openSUSE :-(
if [ -e "/usr/bin/zypper" ]
then
  ./zypper-repositories.bash
fi

for i in \
  TexLive \
  GGobi \
  R-patched \
  RStudio \
  eBook-editing \
  PDF-Tools \
  Perl-Modules \
  Perl-Local-Library \
  GoogleRefine \
  Maqetta \
  Redis-Source
do
  pushd $i
  ./install-all.bash
  popd
done
