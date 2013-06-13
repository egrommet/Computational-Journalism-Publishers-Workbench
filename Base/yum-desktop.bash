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

../common/authenticate.bash "Installing desktop add-ons"
sudo -H yum install -y \
  yumex \
  gpointing-device-settings \
  firefox \
  vim-X11 \
  xchat \
  pidgin \
  vim-enhanced \
  powertop \
  kernel-tools \
  perl-Padre \
  vidalia
