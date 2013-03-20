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

# unixODBC
sudo -H zypper install -y \
  unixODBC \
  unixODBC-devel \
  unixODBC-gui-qt

# Numeric libraries
sudo -H zypper addrepo -cf \
  http://download.opensuse.org/repositories/devel:/libraries:/c_c++/openSUSE_12.3/devel:libraries:c_c++.repo
sudo -H zypper --gpg-auto-import-keys refresh
sudo -H zypper install -y \
  gsl-devel \
  gmp-devel \
  mpfr-devel \
  libatlas3-devel \
  gd-devel

# GUI tools
sudo -H zypper install -y \
  bwidget \
  freeglut-devel \
  libXt-devel \
  libbz2-devel \
  gtk3-devel \
  gtk2-devel \
  tcl-devel \
  tk-devel

# RStudio source
sudo -H zypper install -y \
  patch

# RStudio Desktop
sudo -H zypper install -y \
  libuuid-devel \
  libQtWebKit-devel \
  ant \
  cmake
