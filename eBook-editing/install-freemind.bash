#!/bin/bash

# use distro-supplied freemind for now
if [ -e "/usr/bin/apt-get" ]
then
  apt-get install -y freemind
elif [ -e "/usr/bin/yum" ]
then
  yum install -y freemind
elif [ -e "/usr/bin/zypper" ]
then
  zypper install -y freemind
fi
