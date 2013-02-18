## Installing the Computatational Journalism Publishers Workbench Platform
The software in the Computational Journalism Publishers Workbench is divided into two groups. The first, called the 'Platform', consists of R, the RKWard R GUI/IDE, the GGobi visual exploratory analysis tools and the tools necessary to install R packages and task views.

To install the platform, start the virtual machine, log in and open a terminal. Type
```
cd Computational-*
./setup-environment.bash
./install-platform.bash  
```
This will run quite a while. On my dual-core i5 laptop on typical coffee shop wireless, it takes about an hour. It is downloading the platform software over the Internet and compiling some of it from source.
