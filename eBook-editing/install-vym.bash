#!/bin/bash

# use distro-supplied vym for now
if [ -e "/usr/bin/apt-get" ]
then
  apt-get install -y vym
elif [ -e "/usr/bin/yum" ]
then
  yum install -y vym
elif [ -e "/usr/bin/zypper" ]
then
  zypper install -y vym
fi
