## Getting Started - VMware Player Hosting

### System requirements
You'll need a Windows or Linux desktop/laptop with at least 3 GB of RAM. ***There is no free VMware Player for Macintosh!*** You will also need reliable wall power and a reliable Internet connection.

### Download the software
1. Download and install [VMware Player](http://www.vmware.com/products/player/).
1. [Download a Linux install ISO image](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/CommonInstallSteps.md#download-a-linux-install-iso-image).

### Create a virtual machine
1. Start up VMware Player. Press the 'Create a New Virtual Machine' button.
1. In the first panel, choose 'I will install the operating system later.' and press 'Next'.
1. Select 'Linux' for the guest operating system. Choose the version in the drop-down menu.
	* For 32-bit Linux Mint or Ubuntu, choose 'Ubuntu'. Then press 'Next'.
	* For 64-bit Linux Mint or Ubuntu, choose 'Ubuntu 64-bit'. Then press 'Next'.
	* For 32-bit Fedora, choose 'Fedora'. Then press 'Next'.
	* For 64-bit Fedora, choose 'Fedora 64-bit'. Then press 'Next'.
1. Choose a name for the virtual machine and press 'Next'.
1. In the 'Disk Size' menu, create a 32 GB virtual hard drive and press 'Next'.
1. In the next panel, just press 'Finish'. Press 'Close' in the final panel.
1. Next, go into the 'Edit virtual machine settings' menu.
1. Set the virtual machine memory to 1536 MB or more.
1. In the virtual machine 'CD/DVD' settings, select 'Use ISO image' and connect the virtual machine CD drive to the ISO file you downloaded.
1. Press the 'Save' button.
1. Start the virtual machine with the 'Play virtual machine' button.

### [Install Linux](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/CommonInstallSteps.md#install-linux)

### [Download and unpack the scripts](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/CommonInstallSteps.md#download-and-unpack-the-scripts)

### [Run the 'before-snapshot.bash' script](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/CommonInstallSteps.md#run-the-before-snapshotbash-script)

### Install VMware tools
1. Open a terminal and type

	```
	cd ~/Computational-*
	./VMwareSetup.bash
	```
1. You will be asked a number of questions. In all cases, just press 'Enter' and accept the default. After the guest tools are installed, the virtual machine will shut down and VMware Player will close.
1. After shutdown, go into the virtual machine's 'CD/DVD' settings and disconnect the virtual ISO file with the VMware Tools.
## [Next Step: Installing the Computatational Journalism Publishers Workbench Platform](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/InstallingThePlatform.md)
