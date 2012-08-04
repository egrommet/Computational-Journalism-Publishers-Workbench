#!/bin/bash

# use distro-supplied calibre for now
if [ -e "/usr/bin/apt-get" ]
then
  apt-get install -y calibre
elif [ -e "/usr/bin/yum" ]
then
  yum install -y calibre
elif [ -e "/usr/bin/zypper" ]
then
  zypper install -y calibre
fi
