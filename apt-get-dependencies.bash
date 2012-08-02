#! /bin/bash -v

# TexLive
apt-get install -y \
  vim \
  vim-gtk \
  git \
  curl

# R-compiled
apt-get install -y \
  gfortran \
  g++ \
  openjdk-7-jdk \
  libreadline-gplv2-dev \
  libxt-dev \
  libx11-dev \
  libxmu-dev \
  libpango1.0-dev \
  libcairo2-dev \
  tk-dev \
  libtiff4-dev \
  texinfo \
  libicu-dev

# ggobi
apt-get install -y \
  libgtk2.0-dev \
  libxml2-dev \
  libltdl-dev

# Packages
apt-get install -y \
  freeglut3-dev \
  libfftw3-dev \
  libgd2-xpm-dev \
  libgsl0-dev \
  libsndfile1-dev

# RStudio
apt-get install -y \
  libqtwebkit-dev \
  build-essential \
  pkg-config \
  fakeroot \
  cmake \
  uuid-dev \
  libssl-dev \
  libbz2-dev \
  zlib1g-dev \
  libpam-dev \
  libapparmor1  \
  apparmor-utils \
  libboost-all-dev \
  ant \
  unzip
