## What's New?

### Release 2.7.0
1. Cutesy release code name: "Why, is one missing?"
1. PostgreSQL is no longer an option; I've moved it and its R interface package into the platform.
1. I've added SQLite, SQLite Manager and the SQLite R interface packages to the platform. The underlying libraries get installed anyway with most full-featured Linux desktops, so all that's missing is GUI and command line tools for database administration and the R packages,
1. I've added an option to install [ownCloud](http://owncloud.org/) from upstream packages. See the [ownCloud option README](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/ownCloud/README.md) for links to the online documentation.
1. I've added the [wxMaxima](https://github.com/andrejv/wxmaxima) symbolic math package to the platform.
1. I've refactored the install scripts. The base components are now found in the 'Base' directory and the platform components in the 'Platform' directory. The top-level install scripts should function the same way they did in the previous release.

### Release 2.6.0
1. Cutesy release code name: "A veiled threat!"
1. There is now a minimalist version of the workbench, which I call the "Base." The base consists of the chosen Linux desktop, the command-line version of R and the GGobi data visualization system. Both R and GGobi are installed from the Linux distribution. This means that in principle any Linux distribution with both R and GGobi can be used, although I am still only supporting Fedora 18, Linux Mint 14 and Ubuntu 12.10.<br><br>
For the impatient, there is now a three-step process to get started:
	* Install a supported Linux desktop.
	* Download and unpack the install scripts.
	* Run the 'install-base.bash' script.
1. All the R packages installed in R-platform and the options are installed for all users in a ***site library***. See [Managing Libraries](http://cran.r-project.org/doc/manuals/r-release/R-admin.html#Managing-libraries) for the details on how this works.
1. [Shiny Server](https://github.com/rstudio/shiny-server#shiny-server) is now included in the [Node.js option](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/Node.js/README.md).
1. I've added more PDF tools to the [ScrapingTools option](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/ScrapingTools/README.md).

### Release 2.5.0
1. Cutesy release code names: Ubuntu's got 'em, Fedora's got 'em, even ***R*** has them now. But sadly, the Computational Journalism Publishers' Workbench never thought to start that tradition. So here goes: the 'theme' is punchlines to jokes/riddles. For 2.5.0, the cutesy release code name is "I was talking to the duck!"
1. I've made [RKWard](http://rkward.sourceforge.net/) an option rather than having it as a standard part of the platform.
1. I've made RStudio Desktop part of the platform. RStudio Server is still optional.
1. The RStudio Server install script no longer automatically configures the server. You have to run the script manually.
1. I've added installation of [Redis](http://redis.io/) as an option.
1. I've added installation of [Node.js](http://nodejs.org/) and [CoffeeScript](http://coffeescript.org/) as an option. Some motivation for CoffeeScript: [Journo & Literate CoffeeScript](http://ashkenas.com/literate-coffeescript/).
1. I've added [Pandoc](http://www.johnmacfarlane.net/pandoc/) to the [Editing](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/Editing/README.md) pseudo-task view.
1. I've removed [Django](https://www.djangoproject.com/) from the Editing pseudo-task view. It will return as an option in a future release.
1. I've refactored the installation scripts. There is a new script, 'before-snapshot.bash', that does nearly all the steps to set up a virtual machine after a Linux install. The 'Really Quick Start' process is now:
	* Create a virtual machine with your favorite virtual desktop tool. I've tested with Virtual Machine Manager / qemu-kvm, Oracle VM VirtualBox, VMware Workstation / Player and Windows 8 Pro Client Hyper-V.
	* Install Fedora 18, Linux Mint 14 or Ubuntu 12.10.
	* Download/unpack the workbench scripts from Github to your home directory on the virtual machine.
	* Run 'before-snapshot.bash'. The virtual machine will reboot.
	* Run 'VMware-setup.bash' on VMware hosts or 'VirtualBox-setup.bash' on VirtualBox hosts. There may be a way to automate this decision but I haven't found a reliable way yet.
	* The virtual machine will shut down. If your virtualizer allows it, take a snapshot.
	* Start the virtual machine up and run 'install-platform.bash'.

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
