## Getting Started - Oracle VM VirtualBox Hosting

### System requirements
You'll need a Windows, Linux or Macintosh desktop/laptop with at least 3 GB of RAM. You will also need reliable wall power and a reliable Internet connection.

### Download the software
1. Download and install [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads).
1. Download a Linux install ISO image. You do ***not*** need to burn this image file to a CD/DVD or copy it to a USB drive. Supported Linux distributions are currently
    * [Fedora 18](https://fedoraproject.org/en/get-fedora)<br>
    * [Linux Mint 14](http://www.linuxmint.com/download.php)<br>
    * [Ubuntu 12.10](http://www.ubuntu.com/download)<br>

### Create a virtual machine
1. Start up Oracle VM VirtualBox. Create a virtual machine with the Linux operating system, 1536 MB of memory, and a 32 GB virtual hard disk.
	* For the operating system type, choose 'Fedora' for Fedora, 'Ubuntu' for Ubuntu or Linux Mint.
1. In the virtual machine 'Display' settings, set the display video memory to 128 MB and enable 3D acceleration.
1. In the virtual machine 'Storage' settings, connect the virtual machine CD drive to the ISO file you downloaded.

### Install Linux
1. Start the virtual machine.
1. Install Linux to the virtual machine as described in the documentation for the Linux distribution.
1. When the install is finished, it will ask you to reboot. Reboot the system.
1. During the install, you created a non-root user with adminstrative privileges. Log in as as that non-root user. ***Open the distribution's software update application and install all the required updates. Do not skip this step!***

The update may take quite a while. At several points in the update, you may be asked about configuration files. Just press 'Enter' if this happens. When the software update finishes, ***reboot the virtual machine even if it didn't ask you to do so.***

### Download and unpack the scripts
1. After the reboot, log in and start the browser. Browse to the [Github tags page](http://j.mp/CompJournBench). Download the most recent 'Source code (zip)' archive file. 
1. Open the archive with the Archive Manager and press the 'Extract' button on the upper right. In the file selection dialog, pick your home directory and press the 'Extract' button on the lower right.

### Install VirtualBox Guest Additions
The terminal application on Linux puts you in a program called the 'Bourne Again SHell (bash)'. This has a nifty feature called 'bash completion'. You can type the first part of a command or file name and press the 'Tab' key, and 'bash' will type the rest for you! If there's more than one possibility, you'll see them listed. Try it on the commands given below!

1. Remove any existing guest tools. Some Linux distributions install them for you, but you need to use the ones that match the version of VirtualBox you're using to host the virtual machine. Open a terminal and type

	```
	cd ~/Computational-*
	./remove-guest-tools.bash
	```
1. After the guest tool removal completes, go to the VirtualBox 'Devices' menu. Select 'Install guest additions'. Press the ***'Cancel'*** button if you get a dialog asking you to open the media with the File Manager or run it.
1. In the terminal, type

	```
	./VirtualBoxSetup.bash
	```
1. You may be asked if you wish to continue. If this happens, answer 'yes'. The script will then install the VirtualBox guest additions. Then the virtual machine will shut down.
1. After shutdown, go into the machine's 'Storage' settings and disconnect the virtual ISO file with the guest additions.
