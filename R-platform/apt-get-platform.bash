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

# RKWard and GGobi from distro!
../common/authenticate.bash
sudo apt-get install -y \
  rkward \
  ggobi \
  ggobi-dev

# unixODBC
../common/authenticate.bash
sudo apt-get install -y \
  unixodbc \
  unixodbc-bin \
  unixodbc-dev \
  freeglut2-dev
