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

source ~/.bash_profile
export HERE=`pwd`

pushd ~/local/src
export VERSION=0.37
export DIR=antiword-${VERSION}
export WHAT=${DIR}.tar.gz
export WHERE=http://www.winfield.demon.nl/linux
curl ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}
tar xf ${WHAT}
cd ${DIR}
patch -b Makefile.Linux ${HERE}/Makefile.Linux.patch
make install
popd
