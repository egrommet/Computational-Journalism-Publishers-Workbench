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
ls -ltrA $HOME

# set up stuff everyone needs
mkdir -p ~/local/src
mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/pixmaps
cat bashrc >> ~/.bashrc
cat bash_profile >> ~/.bash_profile
source ~/.bash_profile

echo 'Installing devtools packages'
echo 'You will need to authenticate'
if [ -e "/usr/bin/apt-get" ]
then
  ./apt-get-devtools.bash 2>&1 | tee devtools.log
elif [ -e "/usr/bin/yum" ]
then
  ./yum-devtools.bash 2>&1 | tee devtools.log
elif [ -e "/usr/bin/zypper" ]
then
  ./zypper-devtools.bash 2>&1 | tee devtools.log
elif [ -e "/usr/sbin/urpmi" ]
then
  ./urpmi-devtools.bash 2>&1 | tee devtools.log
fi
