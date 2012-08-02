#! /bin/bash -v

for i in texlive
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
