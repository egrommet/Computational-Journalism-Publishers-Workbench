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

export VERSION=`uname -r`
export MACHINE=`uname -m`
export WHERE=http://ddebs.ubuntu.com/pool/main/l/linux
if [ "${MACHINE}" != "x86_64" ]
then
  export WHAT=`curl ${WHERE}/|grep i386|grep ${VERSION}|sed 's/^.*href="//'|sed 's/".*$//'`
else
  export WHAT=`curl ${WHERE}/|grep amd64|grep ${VERSION}|sed 's/^.*href="//'|sed 's/".*$//'`
fi
wget ${WHERE}/${WHAT}
sudo dpkg --install ${WHAT}
sudo updatedb
locate vmlinux
