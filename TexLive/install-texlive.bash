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

export WHERE=http://www.math.washington.edu/tex-archive/systems/texlive/tlnet/
export WHAT=install-tl-unx.tar.gz
export HERE=`pwd`
export MACHINE=`uname -m`

mkdir -p ${HOME}/local/src
pushd ${HOME}/local/src
rm -fr install-tl*
curl -L ${WHERE}/${WHAT} | tar xzf -
cd install-tl-*
/usr/bin/time ./install-tl \
  -repository ${WHERE} \
  -profile ${HERE}/texlive.profile-${MACHINE}
popd
cat texlive-${MACHINE}.sh >> ~/.bashrc
source ~/.bashrc
