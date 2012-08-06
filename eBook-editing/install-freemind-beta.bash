#!/bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

rm -fr /usr/local/share/freemind
mkdir -p /usr/local/share/freemind
pushd /usr/local/share
curl -L http://downloads.sourceforge.net/project/freemind/freemind-unstable/1.0.0_Beta5/freemind-bin-max-1.0.0_Beta_5.zip > freemind-bin-max-1.0.0_Beta_5.zip
cd freemind
unzip ../freemind-bin-max-1.0.0_Beta_5.zip
popd

chmod +x /usr/local/share/freemind/freemind.sh
ln -sf /usr/local/share/freemind/freemind.sh /usr/local/bin/freemind
mkdir -p /usr/local/share/applications
cp freemind.desktop /usr/local/share/applications
mkdir -p /usr/local/share/icons/hicolor

export HERE=`pwd`
pushd /usr/local/share/icons/hicolor
tar xf ${HERE}/freemind-icons.tbz2
popd
