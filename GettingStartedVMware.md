## Getting Started - VMware Player Hosting

### System requirements
You'll need a Windows or Linux desktop/laptop with at least 3 GB of RAM. ***There is no free VMware Player for Macintosh!*** You will also need reliable wall power and a reliable Internet connection.

### Download the software
1. Download and install [VMware Player](http://www.vmware.com/products/player/).
1. [Download a Linux install ISO image](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/CommonInstallSteps.md#download-a-linux-install-iso-image).

### Create a virtual machine
1. Start up VMware Player. Press the 'Create a New Virtual Machine' button.
1. In the first panel, choose 'I will install the operating system later.' and press 'Next'.
1. Select 'Linux' for the guest operating system. Choose the version in the drop-down menu. For Linux Mint, choose 'Ubuntu'. Then press 'Next'.
1. Choose a name for the virtual machine and press 'Next'.
1. In the 'Disk Size' menu, create a 32 GB virtual hard drive and press 'Next'.
1. In the next panel, just press 'Finish'. Press 'Close' in the final panel.
1. Next, go into the 'Edit virtual machine settings' menu.
1. Set the virtual machine memory to 1536 MB.
1. In the virtual machine 'CD/DVD' settings, connect the virtual machine CD drive to the ISO file you downloaded.
1. Press the 'Save' button.
1. Start the virtual machine.

### [Install Linux](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/CommonInstallSteps.md#install-linux)

### [Download and unpack the scripts](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/CommonInstallSteps.md#download-and-unpack-the-scripts)

### [Run the 'before-snapshot.bash' script](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/CommonInstallSteps.md#run-the-before-snapshotbash-script)

### Install VMware tools
The terminal application on Linux puts you in a program called the 'Bourne Again SHell (bash)'. This has a nifty feature called 'bash completion'. You can type the first part of a command or file name and press the 'Tab' key, and 'bash' will type the rest for you! If there's more than one possibility, you'll see them listed. Try it on the commands given below!

1. Remove any existing guest tools. Some Linux distributions install them for you, but you need to use the ones that match the version of VMware you're using to host the virtual machine. Open a terminal and type

	```
	cd ~/Computational-*
	./remove-guest-tools.bash
	```
1. After the guest tool removal completes, go to the VMware Player 'Virtual Machine' menu, select 'Install VMware Tools...'. Press the 'Install' button.
1. In the terminal, type

	```
	./VMwareSetup.bash
	```
1. You will be asked a number of questions. In all cases, just press 'Enter' and accept the default. After the guest tools are installed, the virtual machine will shut down and VMware Player will close.
1. After shutdown, go into the virtual machine's 'CD/DVD' settings and disconnect the virtual ISO file with the VMware Tools.
## [Next Step: Installing the Computatational Journalism Publishers Workbench Platform](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/InstallingThePlatform.md)
