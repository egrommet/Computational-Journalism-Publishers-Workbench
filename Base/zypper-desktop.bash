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

# fbpanel lives here
sudo -H zypper addrepo -cf \
  http://download.opensuse.org/repositories/home:/subchaser:/desktop/openSUSE_Factory/home:subchaser:desktop.repo
sudo -H zypper --gpg-auto-import-keys refresh
sudo -H zypper install -y \
  obconf \
  openbox \
  fbpanel \
  MozillaFirefox \
  gvim \
  xchat \
  pidgin \
  powertop \
  cpufrequtils \
  gitk \
  git-gui
