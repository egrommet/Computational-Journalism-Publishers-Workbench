## What's New?

### Release 2.4.0
1. I've moved the R GUIs - R Commander, Rattle, JGR and Deducer - into the R platform install scripts. That means that once you've installed the platform, you have five of the six common R GUIs. RStudio is still an option, however, because of the lengthy process of building it from source.
1. [Shiny](http://www.rstudio.com/shiny/) (the desktop version) has been added to the platform. I'm going to hold off on Shiny Server for a while, though.
1. I've moved the [tm text mining package](http://cran.r-project.org/web/packages/tm/index.html) and plugins from the Natural Language Processing task view into the platform.
1. I've added [Doc⚡split](http://documentcloud.github.com/docsplit/) and its dependencies to the [Web Scraping / PDF Extraction Tools](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/ScrapingTools/README.md) pseudo-task view.

### Release 2.3.0
1. I've added support for the [Openbox window manager](http://openbox.org/) and the [fbpanel panel](http://fbpanel.sourceforge.net/). On a limited environment - older systems with limited RAM or 32-bit machines, for example - this provides a workable desktop with menus, a taskbar, workspaces, a network applet and a clock.
1. I've added the [Padre Perl Application Development and Refactoring Environment](http://padre.perlide.org/). I still do enough work in Perl that I find this useful.

### Release 2.0.0
1. Bare metal support: I'm now testing on 64-bit machines with both Linux Mint 14 and Fedora 18. You'll need an Intel or AMD 64-bit machine with at least 4 GB of RAM. Both Fedora 18 and Linux Mint 14 have excellent installation documentation.
1. Virtual hosting on bare metal: I've included scripts to install the Virtual Machine Manager and the kernel virtual machine hypervisor. See the [Virtual Hosting README.md](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/VirtualHosting/README.md).
1. Massive refactoring: I removed a number of packages that I wasn't using, and added many more optional end-user tools from the Linux repositories. See the README.md files in the directories for the major components.
1. RKWard: it turns out that the [RKWard R GUI/IDE](http://rkward.sourceforge.net/) is available for both Fedora 18 and Linux Mint 14. This isn't quite as powerful as RStudio, but it's packaged by the Linux teams and has a fair amount of help available for beginners.
1. Suggested readings: I've added Amazon affiliate links for some of the better books for beginners on the technologies available. I own most of them already and the rest are on my wish list.
