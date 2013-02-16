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

sudo apt-get install -y \
  libgsl0-dev \
  libgmp-dev \
  libmpfr-dev \
  libltdl-dev \
  libtool
if [ -e "/etc/ld.so.conf.d/quantlib.conf" ]
then
  echo 'QuantLib is already installed!'
  sleep 4
else
  ./install-quantlib.bash 2>&1 | tee quantlib.log
fi
