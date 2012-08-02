#! /bin/bash -v

for i in R-patched ggobi packages
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
