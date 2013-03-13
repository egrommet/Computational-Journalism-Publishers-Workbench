## Getting Started - Oracle VM VirtualBox Hosting

### System requirements
You'll need a Windows, Linux or Macintosh desktop/laptop with at least 3 GB of RAM. You will also need reliable wall power and a reliable Internet connection.

### Download the software
1. Download and install [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads).
1. [Download a Linux install ISO image](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/CommonInstallSteps.md#download-a-linux-install-iso-image).

### Create a virtual machine
1. Start up Oracle VM VirtualBox. Create a virtual machine with the Linux operating system, 1536 MB of memory or more, and a 32 GB virtual hard disk. For the operating system type
	* For 32-bit Linux Mint or Ubuntu, choose 'Ubuntu'.
	* For 64-bit Linux Mint or Ubuntu, choose 'Ubuntu 64-bit'.
	* For 32-bit Fedora, choose 'Fedora'.
	* For 64-bit Fedora, choose 'Fedora 64-bit'.
1. In the virtual machine 'Display' settings, set the display video memory to 128 MB and enable 3D acceleration.
1. In the virtual machine 'Storage' settings, connect the virtual machine CD drive to the ISO file you downloaded.
1. Start the virtual machine.

### [Install Linux](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/CommonInstallSteps.md#install-linux)

### [Download and unpack the scripts](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/CommonInstallSteps.md#download-and-unpack-the-scripts)

### [Run the 'install-base.bash' script](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/CommonInstallSteps.md#run-the-install-basebash-script)

### Install VirtualBox Guest Additions

1. Go to the VirtualBox 'Devices' menu. Select 'Install guest additions'. Press the ***'Cancel'*** button if you get a dialog asking you to open the media with the File Manager or run it.
1. In the terminal, type

	```
	cd ~/Computational-*
	./VirtualBoxSetup.bash
	```
1. You may be asked if you wish to continue. If this happens, answer 'yes'. The script will then install the VirtualBox guest additions.
## [Next Step: Installing the Computatational Journalism Publishers Workbench Platform](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/blob/master/InstallingThePlatform.md)
