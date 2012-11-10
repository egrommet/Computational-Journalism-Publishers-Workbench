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

rm -fr ${HOME}/local/share/freemind*
mkdir -p ${HOME}/local/share/freemind
pushd ${HOME}/local/share
curl -L http://downloads.sourceforge.net/project/freemind/freemind-unstable/1.0.0_Beta8/freemind-bin-max-1.0.0_Beta_8.zip > freemind-bin-max-1.0.0_Beta_8.zip
cd freemind
unzip ../freemind-bin-max-1.0.0_Beta_8.zip
popd

chmod +x ${HOME}/local/share/freemind/freemind.sh
ln -sf ${HOME}/local/share/freemind/freemind.sh ${HOME}/local/bin/freemind
mkdir -p ${HOME}/local/share/applications
sed "s:HOME:${HOME}:" freemind.desktop > \
  ${HOME}/.local/share/applications/freemind.desktop
mkdir -p ${HOME}/local/share/icons/hicolor

export HERE=`pwd`
pushd ${HOME}/local/share/icons/hicolor
tar xf ${HERE}/freemind-icons.tbz2
popd
