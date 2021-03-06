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

../common/authenticate.bash "Installing basic development tools"
sudo -H ./apt-get-cran.bash
sudo -H apt-get install -y \
  vim \
  git \
  curl \
  wget \
  lynx \
  aria2 \
  libcurl4-gnutls-dev \
  linux-headers-generic \
  linux-image-generic \
  gcc \
  g++ \
  gfortran \
  make \
  default-jdk \
  default-jre \
  icedtea-plugin

# Needed to install guest tools on virtual machines
sudo -H apt-get install -y \
  build-essential \
  libncurses5-dev \
  openssl \
  libssl-dev \
  make \
  dkms

# GGobi from distro!
sudo -H apt-get install -y \
  ggobi

# Python package tools for Dexy
sudo -H apt-get install -y \
  python-setuptools \
  python-pip \
  python-markdown \
  python-pygments \
  python-jinja2 \
  python-mock \
  python-pexpect \
  python-requests \
  python-yaml \
  python-docutils \
  python-nose
