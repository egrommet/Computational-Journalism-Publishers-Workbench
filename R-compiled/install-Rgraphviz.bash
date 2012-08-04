#! /bin/bash -v

xhost +
source /etc/profile # reload environment variables
export DISPLAY=:0.0
export PATH=$PATH:/usr/local/bin
/usr/bin/time R --no-save --no-restore < load-Rgraphviz.R
