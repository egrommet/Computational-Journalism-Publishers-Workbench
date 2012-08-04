#!/bin/bash

# use distro-supplied pandoc for now
if [ -e "/usr/bin/apt-get" ]
then
  apt-get install -y pandoc
elif [ -e "/usr/bin/yum" ]
then
  yum install -y pandoc
elif [ -e "/usr/bin/zypper" ]
then
  zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/haskell:/next/openSUSE_12.2/devel:languages:haskell:next.repo
  zypper refresh
  zypper install -y pandoc
fi
