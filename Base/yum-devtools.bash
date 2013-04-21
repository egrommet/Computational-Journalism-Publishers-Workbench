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

../common/authenticate.bash 'Installing developer tools'
sudo -H yum install -y \
  vim \
  git \
  curl \
  wget \
  lynx \
  aria2 \
  libcurl-devel

# Needed to install guest tools on virtual machines
sudo -H yum install -y \
  autoconf \
  make \
  gcc \
  kernel-devel \
  dkms \
  ncurses-devel \
  openssl-devel \
  glibc-devel

# Needed for packages
sudo -H yum install -y \
  java-1.7.0-openjdk-devel \
  gcc-c++ \
  gcc-gfortran

# GGobi from distro!
sudo -H yum install -y \
  ggobi \
  ggobi-devel

# Python package tools for Dexy
sudo -H yum install -y \
  python-setuptools \
  python-pip \
  python-markdown \
  python-markdown2 \
  python-pygments \
  python-jinja2 \
  python-mock \
  python-ordereddict \
  python-pexpect \
  python-requests \
  pexpect \
  python-yaml \
  python-docutils \
  python-nose
