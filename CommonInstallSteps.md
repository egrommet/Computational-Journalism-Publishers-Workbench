## Common Install Steps

### Download a Linux install ISO image
You do ***not*** need to burn this image file to a CD/DVD or copy it to a USB drive for virtual machine installs. Supported Linux distributions are currently
    * [Fedora 18](https://fedoraproject.org/en/get-fedora)<br>
    * [Linux Mint 14](http://www.linuxmint.com/download.php)<br>
    * [Ubuntu 12.10](http://www.ubuntu.com/download)<br>

### Install Linux
1. Start the virtual machine.
1. Install Linux to the virtual machine as described in the documentation for the Linux distribution.
1. When the install is finished, it will ask you to reboot. Reboot the system.

### Download and unpack the scripts
1. After the reboot, log in and start the browser. Browse to the [Github tags page](http://j.mp/CompJournBench). Download the most recent 'Source code (zip)' archive file. 
1. Open the archive with the Archive Manager and press the 'Extract' button on the upper right. In the file selection dialog, pick your home directory and press the 'Extract' button on the lower right.

### Run the 'before-snapshot.bash' script
The terminal application on Linux puts you in a program called the 'Bourne Again SHell (bash)'. This has a nifty feature called 'bash completion'. You can type the first part of a command or file name and press the 'Tab' key, and 'bash' will type the rest for you! If there's more than one possibility, you'll see them listed. Try it on the commands given below!

Open a terminal. Type
```
cd ~/Computational-*
./before-snapshot.bash
```
The system will reboot.
