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
/usr/bin/time ./remove-guest-tools.bash 2>&1 tee remove-guest-tools.log
/usr/bin/time ./updateos.bash 2>&1 | tee updateos.log
/usr/bin/time ./install-devtools.bash 2>&1 | tee devtools.log
/usr/bin/time ./install-desktop.bash 2>&1 | tee desktop.log
popd
pushd Platform
/usr/bin/time ./install-dependencies.bash 2>&1 | tee dependencies.log
./install-platform.bash
popd

echo 'Rebooting in 15 seconds!'
sleep 15
sudo reboot
