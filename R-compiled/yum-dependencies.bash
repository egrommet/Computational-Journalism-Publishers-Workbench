#! /bin/bash -v

# R-compiled
yum install -y \
  vim-enhanced \
  vim-X11 \
  gcc-gfortran \
  gcc-c++ \
  java-1.7.0-openjdk-devel \
  readline-devel \
  libXt-devel \
  libX11-devel \
  libXmu-devel \
  pango-devel \
  cairo-devel \
  tk-devel \
  libtiff-devel \
  texinfo \
  texlive-latex \
  libicu-devel

# ggobi
yum install -y \
  gtk2-devel \
  libxml2-devel \
  libtool-ltdl-devel

# Packages
yum install -y \
  freeglut-devel \
  fftw-devel \
  gd-devel \
  gsl-devel \
  libsndfile-devel
