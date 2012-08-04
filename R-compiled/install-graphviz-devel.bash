#!/bin/bash

# use distro-supplied calibre for now
if [ -e "/usr/bin/apt-get" ]
then
  apt-get install -y graphviz-dev
elif [ -e "/usr/bin/yum" ]
then
  yum install -y graphviz-devel
elif [ -e "/usr/bin/zypper" ]
then
  zypper install -y graphviz-devel
fi
