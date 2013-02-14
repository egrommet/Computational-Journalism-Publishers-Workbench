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

echo "Installing desktop add-ons"
common/authenticate.bash
sudo yum install -y \
  openbox-devel \
  obapps \
  obconf \
  obmenu \
  openbox \
  fbpanel \
  firefox \
  vim-X11 \
  xchat \
  pidgin \
  aria2 \
  vim-enhanced \
  powertop
