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

# set up repository
export HERE=`pwd`
wget http://download.opensuse.org/repositories/isv:ownCloud:community/xUbuntu_12.10/Release.key
sudo -H cp ${HERE}/apt-get-repository.txt /etc/apt/sources.list.d/owncloud.list 
sudo -H apt-key add - < ${HERE}/Release.key  
sudo -H apt-get update
sudo -H apt-get install owncloud
