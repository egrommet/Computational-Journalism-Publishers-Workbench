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

echo 'Installing platform packages'
echo 'You will need to authenticate'
if [ -e "/usr/bin/apt-get" ]
then
  ./apt-get-platform.bash 2>&1 | tee platform.log
elif [ -e "/usr/bin/yum" ]
then
  ./yum-platform.bash 2>&1 | tee platform.log
elif [ -e "/usr/bin/zypper" ]
then
  ./zypper-platform.bash 2>&1 | tee platform.log
elif [ -e "/usr/sbin/urpmi" ]
then
  ./urpmi-platform.bash 2>&1 | tee platform.log
fi
