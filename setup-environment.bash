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

# make sure stuff works on Ubuntu :-(
if [ -f "$HOME/.profile" ]
then
  if [ ! -f "$HOME/.bash_profile" ]
  then
    echo ".profile exists but .bash_profile doesn't -- making symlink!"
    ln -sf $HOME/.profile $HOME/.bash_profile
  fi
fi

# set up stuff everyone needs
cat bashrc >> ~/.bashrc
