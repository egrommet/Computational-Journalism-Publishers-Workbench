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

# Make sure whole LXDE desktop is there
yum install -y \
  lxde-common \
  lxappearance \
  lxde-icon-theme \
  lxinput \
  lxmenu-data \
  gpicview \
  lxlauncher \
  lxmusic \
  lxpolkit \
  lxrandr \
  lxsession \
  lxsession-edit \
  lxtask \
  menu-cache \
  desktop-backgrounds-compat \
  lxappearance-obconf \
  lxpanel \
  lxshortcut \
  lxterminal \
  openbox-libs \
  obconf \
  openbox \
  obmenu
