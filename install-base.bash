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

source ~/.bashrc

# recursive installer
for i in */install-base.bash
do
  j=`echo ${i} | sed 's/install-base.bash//'`
  if [ "${j}" != "common/" ]
  then
    echo ${j}
    pushd ${j}
    ./install-base.bash 2>&1 | tee base.log
    popd
  fi
done
