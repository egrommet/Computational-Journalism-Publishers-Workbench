#! /bin/bash

xhost +
source /etc/profile # reload environment variables
export DISPLAY=:0.0
export PATH=$PATH:/usr/local/bin
R CMD javareconf
/usr/bin/time R --no-save --no-restore < load-packages.R
cp wordnet.sh /etc/profile.d # set WordNet home
source /etc/profile
set|grep WNHOME
