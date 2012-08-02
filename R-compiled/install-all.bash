#! /bin/bash -v

for i in dependencies R-patched ggobi packages
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
