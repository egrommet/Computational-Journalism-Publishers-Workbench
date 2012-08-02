#!/bin/bash -v

zypper install -y \
  make \
  gcc \
  gcc-c++ \
  gcc-fortran \
  build \
  cmake \
  libbz2-devel \
  zlib-devel \
  libuuid-devel \
  libopenssl-devel \
  pam-devel \
  boost-devel \
  pango-devel \
  java-1_7_0-openjdk-devel \
  ant
