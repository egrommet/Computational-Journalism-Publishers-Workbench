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

# RKWard and GGobi from distro!
../common/authenticate.bash
sudo yum install -y \
  rkward \
  ggobi

# R packages from distro
  R-abind \
  R-acepack \
  R-affy \
  R-affydata \
  R-affyio \
  R-ALL \
  R-AnnotationDbi \
  R-biglm \
  R-bigmemory \
  R-bigmemory-devel \
  R-Biobase \
  R-BiocGenerics \
  R-biomaRt \
  R-Biostrings \
  R-Biostrings-devel \
  R-bitops \
  R-BSgenome \
  R-BufferedMatrix \
  R-BufferedMatrix-devel \
  R-BufferedMatrixMethods \
  R-car \
  R-caTools \
  R-combinat \
  R-core \
  R-DBI \
  R-devel \
  R-DynDoc \
  R-fibroEset \
  R-GeneR \
  R-GenomicFeatures \
  R-GenomicRanges \
  R-hdf5 \
  R-hgu133acdf \
  R-hgu95av2cdf \
  R-hgu95av2probe \
  R-IRanges \
  R-IRanges-devel \
  R-java \
  R-java-devel \
  R-lmtest \
  R-maanova \
  R-mAr \
  R-msm \
  R-multcomp \
  R-multtest \
  R-mvtnorm \
  R-nws \
  R-pls \
  R-preprocessCore \
  R-preprocessCore-devel \
  R-qcc \
  R-qtl \
  R-qvalue \
  R-Rcompression \
  R-RCurl \
  R-rlecuyer \
  R-RM2 \
  R-ROC \
  R-RODBC \
  R-RScaLAPACK \
  R-Rsolid \
  R-Rsolid-devel \
  R-RSQLite \
  R-rtracklayer \
  R-RUnit \
  R-sciplot \
  R-statmod \
  R-systemfit \
  R-timeDate \
  R-tkWidgets \
  R-waveslim \
  R-wavethresh \
  R-widgetTools \
  R-XML \
  R-xtable \
  R-zoo

# unixODBC
../common/authenticate.bash
sudo yum install -y \
  unixODBC \
  unixODBC-devel \
  unixODBC-gui-qt

# Headers for package building
../common/authenticate.bash
sudo yum install -y \
  antiword \
  ggobi-devel \
  texinfo \
  evince \
  gcc-gfortran \
  gcc-c++ \
  readline-devel \
  libXt-devel \
  libXmu-devel \
  java-1.7.0-openjdk-devel \
  tk-devel \
  libtiff-devel \
  icu \
  libicu-devel \
  graphviz-devel \
  freeglut-devel \
  fftw-devel \
  gd-devel \
  gsl-devel \
  atlas-devel \
  libcurl-devel \
  libsndfile-devel \
  subversion \
  gtk2-devel \
  libxml2-devel \
  libtool-ltdl-devel \
  gmp-devel \
  mpfr-devel
