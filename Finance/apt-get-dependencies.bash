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

sudo -H apt-get install -y \
  libltdl-dev \
  libtool

# the Quantlib in Linux Mint 14 / Ubuntu 12.10 has a dependency problem with Boost 1.50
# so we install QuantLib from source
if [ -e "/etc/ld.so.conf.d/quantlib.conf" ]
then
  echo 'QuantLib is already installed!'
  sleep 4
else
  sudo -H ./install-quantlib.bash 2>&1 | tee quantlib.log
fi
