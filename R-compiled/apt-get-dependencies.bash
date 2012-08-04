#! /bin/bash

# R-compiled
apt-get install -y \
  epdfview \
  lxterminal \
  firefox \
  curl \
  vim \
  vim-gtk \
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
  texlive-fonts-extra \
  texlive-latex-base \
  libicu-dev

# ggobi
apt-get remove -y graphviz-dev
apt-get autoremove -y
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
