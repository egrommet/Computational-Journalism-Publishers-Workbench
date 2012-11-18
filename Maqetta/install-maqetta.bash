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

export WHERE=http://maqetta.org/downloads
export DIR=maqetta
export \
  WHAT=`curl -s ${WHERE}/|grep '.zip'|head -n 1|sed 's/^.*href=.//'|sed 's/zip.*/zip/'`
export VERSION=`echo ${WHAT}|sed 's/\.zip//'`

mkdir -p ~/local
pushd ~/local
rm -fr ${DIR} ${WHAT}
wget ${WHERE}/${WHAT}
unzip ${WHAT}
chmod +x ${DIR}/*.sh
rm -fr ${WHAT}
popd

cp Maqetta_Logo_250x76.png ~/local/maqetta
mkdir -p ~/.local/share/applications
sed s:HOME:$HOME: maqetta.desktop > ~/.local/share/applications/maqetta.desktop
sed s:HOME:$HOME: maqetta-browser.desktop > \
  ~/.local/share/applications/maqetta-browser.desktop
