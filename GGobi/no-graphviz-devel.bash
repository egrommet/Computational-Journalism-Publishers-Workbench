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

echo 'Removing graphviz-dev(el)'
if [ -e "/usr/bin/apt-get" ]
then
  sudo apt-get remove -y graphviz-dev
  sudo apt-get autoremove -y
elif [ -e "/usr/bin/yum" ]
then
  sudo yum remove -y graphviz-devel
elif [ -e "/usr/bin/zypper" ]
then
  sudo zypper remove -y graphviz-devel
fi
