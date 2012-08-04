#! /bin/bash

# R-compiled
zypper install -y \
  vim-enhanced \
  gvim \
  gcc-fortran \
  gcc-c++ \
  java-1_7_0-openjdk-devel \
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
  texlive-fonts-extra \
  libicu-devel

# ggobi
zypper remove -y graphviz-devel
zypper install -y \
  gtk2-devel \
  libxml2-devel

# Packages
zypper install -y \
  freeglut-devel \
  fftw3-devel \
  gd-devel \
  gsl-devel \
  libsndfile-devel
