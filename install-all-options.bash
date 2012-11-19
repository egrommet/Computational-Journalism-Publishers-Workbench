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

# recursive installer
for i in */install-all.bash
do
  j=`echo ${i} | sed 's/install-all.bash//'`
  if [ "${j}" != "common/" ]
  then
    echo ${j}
    pushd ${j}
    ./install-all.bash
    popd
  fi
done
