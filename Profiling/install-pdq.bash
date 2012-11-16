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

export HERE=`pwd`
pushd ~/local/src
export VERSION=5.0.4
export WHERE=http://downloads.sourceforge.net/project/pdq-qnm-pkg/PDQ%20source/${VERSION}
export WHAT=pdq-${VERSION}.tar.gz
curl -L ${WHERE}/${WHAT} > ${WHAT}
export DIR=pdq
sudo rm -fr ${DIR}
tar xf ${WHAT}
cd ${DIR}
patch -b Makeall ${HERE}/Makeall.patch
sudo ./Makeall
popd
