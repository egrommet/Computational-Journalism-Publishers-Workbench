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

# recursive dependency installer
for i in */install-dependencies.bash
do
  j=`echo ${i} | sed 's/install-dependencies.bash//'`
  if [ "${j}" != "common/" ]
  then
    echo ${j}
    pushd ${j}
    ./install-dependencies.bash 2>&1 | tee dependencies.log
    popd
  fi
done
