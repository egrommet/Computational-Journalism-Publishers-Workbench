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
sudo apt-get install -y \
  obconf \
  obmenu \
  openbox \
  openbox-themes \
  openbox-xdgmenu \
  fbpanel \
  gpointing-device-settings \
  aria2 \
  xchat \
  pidgin \
  firefox \
  cpufrequtils \
  powertop \
  laptop-mode-tools \
  vim-gtk \
  gufw
