#!/bin/bash

if [ -e "/usr/bin/apt-get" ]
then
  ./apt-get-dependencies.bash
elif [ -e "/usr/bin/yum" ]
then
  ./yum-dependencies.bash
elif [ -e "/usr/bin/zypper" ]
then
  ./zypper-dependencies.bash
fi
