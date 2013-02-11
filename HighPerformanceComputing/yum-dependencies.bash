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

sudo yum install -y \
  openmpi \
  openmpi-devel

# make sure ld can find libraries
sudo updatedb
export LIB=`locate openmpi|grep libmpi.so$|sed 's;/libmpi.so;;'`
echo ${LIB} > openmpi.conf 
sudo cp openmpi.conf /etc/ld.so.conf.d/openmpi.conf 
sudo /sbin/ldconfig
