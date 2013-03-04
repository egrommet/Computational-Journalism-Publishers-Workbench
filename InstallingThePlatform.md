## Installing the Computatational Journalism Publishers Workbench Platform
The software in the Computational Journalism Publishers Workbench is divided into two groups. The first, called the 'Platform', consists of R, the GGobi visual exploratory analysis package, the tools necessary to install R packages and task views, and the RStudio Desktop. The second, called the 'Options', are collections of software for a given type of analysis or task. Most of the options roughly correspond to [CRAN Task Views](http://cran.r-project.org/web/views/).

To install the platform, start the virtual machine, log in and open a terminal. Type
```
cd ~/Computational-*
./install-platform.bash  
```
This will run quite a while. On my dual-core i5 laptop on typical coffee shop wireless, it takes about an hour. It is downloading the platform software over the Internet and compiling some of it from source.

To verify that the platform installed correctly, go into the desktop menu and make sure GGobi and RKWard are present and can be started. For more information, see the [R-platform README.md file](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/R-platform/README.md).

## [Next Step: Installing Options](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/InstallingOptions.md)
