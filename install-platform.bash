#!/bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

# set up stuff everyone needs
mkdir -p ~/local/src
mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/pixmaps
cat bashrc >> ~/.bashrc
source ~/.bashrc

./install-dependencies.bash

# PDQ needs 'root' so we do it here
pushd Profiling
./install-all.bash
popd
