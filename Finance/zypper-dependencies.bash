#! /bin/bash -v

zypper install -y \
  libarmadillo2 \
  armadillo-devel \
  gsl-devel

# QuantLib installed from source on openSUSE
./install-quantlib.bash
