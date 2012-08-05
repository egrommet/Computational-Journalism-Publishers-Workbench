#! /bin/bash

for i in dependencies pandoc calibre freemind epubcheck beta-sigil lyx
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
