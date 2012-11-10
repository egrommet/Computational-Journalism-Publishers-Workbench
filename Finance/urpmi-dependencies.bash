#! /bin/bash

sudo urpmi --auto \
  libgmp-devel \
  libmpfr-devel \
  libgsl-devel

# QuantLib installed from source on openSUSE
./install-quantlib.bash 2>&1 | tee quantlib.log
