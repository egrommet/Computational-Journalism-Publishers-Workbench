#!/bin/bash -v

# use distro-supplied pandoc for now
if [ -e "/usr/bin/apt-get" ]
then
  apt-get install -y pandoc
elif [ -e "/usr/bin/yum" ]
then
  yum install -y pandoc
elif [ -e "/usr/bin/zypper" ]
then
  zypper install -y pandoc
fi
