#! /bin/bash -v

sudo zypper install -y \
  libarmadillo2 \
  armadillo-devel \
  gsl-devel

# QuantLib installed from source on openSUSE
./install-quantlib.bash 2>&1 | tee quantlib.log
