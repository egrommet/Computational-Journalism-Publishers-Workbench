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

./setup-environment.bash
source ~/.bash_profile
pushd Base
./updateos.bash 2>&1 | tee updateos.log
./install-devtools.bash 2>&1 | tee devtools.log
./install-desktop.bash 2>&1 | tee desktop.log
./install-dependencies.bash 2>&1 | tee dependencies.log
popd
pushd Platform
./install-platform.bash
popd

echo 'Rebooting in 15 seconds!'
sleep 15
sudo reboot
