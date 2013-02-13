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
sudo apt-get install -y \
  rkward \
  ggobi

# R packages from distro
../common/authenticate.bash
sudo apt-get install -y \
  r-cran-maptools \
  r-cran-surveillance \
  r-revolution-revobase \
  r-base \
  r-base-core \
  r-base-dev \
  r-base-html \
  r-cran-abind \
  r-cran-amelia \
  r-cran-amore \
  r-cran-bayesm \
  r-cran-bitops \
  r-cran-boot \
  r-cran-cairodevice \
  r-cran-car \
  r-cran-catools \
  r-cran-chron \
  r-cran-class \
  r-cran-cluster \
  r-cran-coda \
  r-cran-codetools \
  r-cran-colorspace \
  r-cran-combinat \
  r-cran-date \
  r-cran-dbi \
  r-cran-deal \
  r-cran-diagnosismed \
  r-cran-digest \
  r-cran-domc \
  r-cran-dosnow \
  r-cran-eco \
  r-cran-effects \
  r-cran-epi \
  r-cran-epibasix \
  r-cran-epicalc \
  r-cran-epir \
  r-cran-epitools \
  r-cran-erm \
  r-cran-evd \
  r-cran-fasianoptions \
  r-cran-fassets \
  r-cran-fbasics \
  r-cran-fbonds \
  r-cran-fcopulae \
  r-cran-fecofin \
  r-cran-fexoticoptions \
  r-cran-fextremes \
  r-cran-fgarch \
  r-cran-fimport \
  r-cran-fmultivar \
  r-cran-fnonlinear \
  r-cran-foptions \
  r-cran-foreach \
  r-cran-foreign \
  r-cran-fportfolio \
  r-cran-fregression \
  r-cran-ftrading \
  r-cran-funitroots \
  r-cran-g.data \
  r-cran-gam \
  r-cran-gdata \
  r-cran-genabel \
  r-cran-genetics \
  r-cran-getopt \
  r-cran-ggplot2 \
  r-cran-gmaps \
  r-cran-gmodels \
  r-cran-gplots \
  r-cran-gregmisc \
  r-cran-gtools \
  r-cran-haplo.stats \
  r-cran-hdf5 \
  r-cran-hmisc \
  r-cran-inline \
  r-cran-int64 \
  r-cran-iterators \
  r-cran-its \
  r-cran-kernsmooth \
  r-cran-lattice \
  r-cran-latticeextra \
  r-cran-lme4 \
  r-cran-lmtest \
  r-cran-lpsolve \
  r-cran-mapdata \
  r-cran-mapproj \
  r-cran-maps \
  r-cran-mass \
  r-cran-matchit \
  r-cran-matrix \
  r-cran-mcmcpack \
  r-cran-medadherence \
  r-cran-mgcv \
  r-cran-misc3d \
  r-cran-mnormt \
  r-cran-mnp \
  r-cran-msm \
  r-cran-multcomp \
  r-cran-multicore \
  r-cran-mvtnorm \
  r-cran-nlme \
  r-cran-nnet \
  r-cran-nws \
  r-cran-permute \
  r-cran-plotrix \
  r-cran-plyr \
  r-cran-polspline \
  r-cran-proto \
  r-cran-psy \
  r-cran-pvclust \
  r-cran-qtl \
  r-cran-quadprog \
  r-cran-qvalue \
  r-cran-randomforest \
  r-cran-raschsampler \
  r-cran-rcmdr \
  r-cran-rcolorbrewer \
  r-cran-rcpp \
  r-cran-relimp \
  r-cran-reshape \
  r-cran-reshape2 \
  r-cran-rggobi \
  r-cran-rgl \
  r-cran-rglpk \
  r-cran-rgtk2 \
  r-cran-rjags \
  r-cran-rjava \
  r-cran-rmpi \
  r-cran-rms \
  r-cran-rmysql \
  r-cran-robustbase \
  r-cran-rocr \
  r-cran-rodbc \
  r-cran-rpart \
  r-cran-rpvm \
  r-cran-rquantlib \
  r-cran-rserve \
  r-cran-rsprng \
  r-cran-rsqlite \
  r-cran-rsymphony \
  r-cran-runit \
  r-cran-sandwich \
  r-cran-scatterplot3d \
  r-cran-slam \
  r-cran-sm \
  r-cran-sn \
  r-cran-snow \
  r-cran-sp \
  r-cran-spatial \
  r-cran-spc \
  r-cran-stabledist \
  r-cran-stringr \
  r-cran-strucchange \
  r-cran-survival \
  r-cran-teachingdemos \
  r-cran-timedate \
  r-cran-timeseries \
  r-cran-tkrplot \
  r-cran-tseries \
  r-cran-urca \
  r-cran-vcd \
  r-cran-vegan \
  r-cran-vgam \
  r-cran-xml \
  r-cran-xtable \
  r-cran-zelig \
  r-cran-zoo \
  r-doc-html \
  r-doc-info \
  r-doc-pdf \
  r-mathlib \
  r-noncran-lindsey \
  r-other-bio3d \
  r-other-mott-happy \
  r-other-rot \
  r-recommended \

# unixODBC
../common/authenticate.bash
sudo apt-get install -y \
  unixodbc \
  unixodbc-dev \
  unixodbc-bin

# Headers for package building
../common/authenticate.bash
sudo apt-get install -y \
  libcurl4-gnutls-dev \
  antiword \
  evince \
  gfortran \
  texinfo \
  openjdk-7-jdk \
  tcl8.5 \
  tk8.5 \
  tcl8.5-dev \
  tk8.5-dev \
  tcl8.5-doc \
  tk8.5-doc \
  libtiff4-dev \
  libxmu-dev \
  libicu-dev \
  libgmp-dev \
  libmpfr-dev \
  graphviz-dev \
  subversion \
  freeglut3-dev \
  libfftw3-dev \
  libgd2-xpm-dev \
  libgsl0-dev \
  libsndfile1-dev \
  libtool \
  libgtk2.0-dev \
  libxml2-dev \
  libltdl-dev \
  libatlas-dev \
  liblapack-dev
