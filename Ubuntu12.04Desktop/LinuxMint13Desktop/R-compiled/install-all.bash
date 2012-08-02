#! /bin/bash -v

for i in dependencies R-patched ggobi
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
