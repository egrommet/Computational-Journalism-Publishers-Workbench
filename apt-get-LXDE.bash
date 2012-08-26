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

# make sure the whole LXDE desktop is here
apt-get install -y \
  firefox \
  lxde \
  lxappearance-obconf \
  lxlauncher \
  lxpanel-indicator-applet-plugin \
  lxtask \
  menu-xdg \
  obconf \
  obmenu \
  openbox \
  openbox-themes \
  openbox-xdgmenu \
  xdg-user-dirs-gtk \
  xdg-user-dirs \
  xdg-utils
