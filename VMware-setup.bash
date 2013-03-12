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

echo "If you haven't already, do 'VM -> Install VMware Tools'"
sleep 15

common/authenticate.bash "Installing guest additions"
sudo mkdir -p /mnt/cdrom
sudo mount /dev/sr0 /mnt/cdrom
tar xf /mnt/cdrom/VMwareTools-9.2.2-893683.tar.gz
cd vmware-tools-distrib
sudo ./vmware-install.pl
cd ..
sudo rm -fr vmware-tools-distrib # cleanup!!!

echo "Shutting down in 15 seconds so you can take a snapshot"
sleep 15
sudo /sbin/shutdown -P now
