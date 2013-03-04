## Common Install Steps

### Download a Linux install ISO image
You do ***not*** need to burn this image file to a CD/DVD or copy it to a USB drive for virtual machine installs. Supported Linux distributions are currently

* [Fedora 18](https://fedoraproject.org/en/get-fedora)
* [Linux Mint 14](http://www.linuxmint.com/download.php)
* [Ubuntu 12.10](http://www.ubuntu.com/download)

### Install Linux
1. Start the virtual machine.
1. Install Linux to the virtual machine as described in the documentation for the Linux distribution.
1. When the install is finished, it will ask you to reboot. Reboot the system.
1. Depending on the distribution, you will be asked to create at non-root user at some point in the process. Make sure this user has administrative privileges. On Linux Mint and Ubuntu, this happens automatically. But on Fedora, you have to set this ***after*** the install the first time the system boots up!

### Download and unpack the scripts
1. After the reboot, log in as the non-root user you created during installation. Start the browser. Browse to the [Github tags page](http://j.mp/CompJournBench). Download the most recent 'Source code (zip)' archive file. 
1. Open the archive with the Archive Manager and press the 'Extract' button on the upper right. In the file selection dialog, pick your home directory and press the 'Extract' button on the lower right.

### Run the 'before-snapshot.bash' script
The terminal application on Linux puts you in a program called the 'Bourne Again SHell (bash)'. This has a nifty feature called 'bash completion'. You can type the first part of a command or file name and press the 'Tab' key, and 'bash' will type the rest for you! If there's more than one possibility, you'll see them listed. Try it on the commands given below!

Open a terminal. Type
```
cd ~/Computational-*
./before-snapshot.bash
```
Depending on how long it has been since the ISO file was released, this step can take some time. It is updating all the packages that have changed since release.
On Fedora, the system will place you into a GUI tool called 'YumEx' to update the software.
The system will reboot.
