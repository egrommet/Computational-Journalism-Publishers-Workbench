## What's New?

1. Bare metal support: I'm now testing on 64-bit machines with both Linux Mint 14 and Fedora 18. You'll need an Intel or AMD 64-bit machine with at least 4 GB of RAM. Both Fedora 18 and Linux Mint 14 have excellent installation documentation.
1. Virtual hosting on bare metal: I've included scripts to install the Virtual Machine Manager and the kernel virtual machine hypervisor. Go to the 'VirtualHosting' directory in a terminal and type

	./install-dependencies.bash
You may have to change some BIOS settings to get the kernel virtual machine hypervisor to work, and some less-expensive PCs may not have support for it in the chips. But most 64-bit Windows PCs have this capability built in.
1. Massive refactoring: I removed a number of packages that I wasn't using, and added many more optional end-user tools from the Linux repositories. See the README.md files in the directories for the major components.
1. RKWard: it turns out that the RKWard R GUI/IDE is available for both Fedora 18 and Linux Mint 14. This isn't quite as powerful as RStudio, but it's packaged by the Linux teams and has a fair amount of help available for beginners.
1. Suggested readings: I've added Amazon affiliate links for some of the better books for beginners on the technologies available. I own most of them already and the rest are on my wish list.
