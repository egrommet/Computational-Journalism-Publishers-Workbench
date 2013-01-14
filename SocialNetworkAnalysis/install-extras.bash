#! /bin/bash -v

# Reference: http://csde.washington.edu/~skyebend/rsonia/rsoniaDemo/
rm -f *.gz
curl -k https://csde.washington.edu/%7Eskyebend/dynamicnetwork/current/dynamicnetwork_0.0-4.tar.gz > dynamicnetwork_0.0-4.tar.gz
curl -k https://csde.washington.edu/%7Eskyebend/rsonia/current/rsonia_0.0-4.tar.gz > rsonia_0.0-4.tar.gz
curl http://cran.r-project.org/src/contrib/Archive/statnet/statnet_2.6.tar.gz > statnet_2.6.tar.gz

R CMD INSTALL statnet*gz
R CMD INSTALL dynamicnetwork*gz
R CMD INSTALL rsonia*gz
