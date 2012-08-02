#! /bin/bash -v

zypper install -y synaptiks firefox git gvim vim-data vim-enhanced imagewriter dkms

# Flash plugin
zypper install -y flash-plugin

zypper dup
zypper install -y \
  gcc \
  make \
  kernel-devel \
  R-base \
  R-base-devel \
  java-1_7_0-openjdk \
  java-1_7_0-openjdk-devel \
  gcc-fortran \
  gcc-c++ \
  make \
  wget \
  aria2
curl http://download1.rstudio.org/rstudio-0.96.316-x86_64.rpm \
  > rstudio-0.96.316-x86_64.rpm
zypper install -y rstudio-*.rpm
