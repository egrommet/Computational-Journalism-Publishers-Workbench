##### Base #####
alias l='ls -CF'
alias ll='l -ltr'
alias la='ll -A'

# parallel make
export NUMCPUS=`grep -c '^processor' /proc/cpuinfo`
alias pmake='make -j$NUMCPUS --load-average=$NUMCPUS'
