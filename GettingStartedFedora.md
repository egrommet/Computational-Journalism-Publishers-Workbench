## Quick Start - Fedora 18 "Spherical Cow" on VirtualBox

1. System requirements: You'll need a Windows, Macintosh or Linux desktop/laptop with at least 3 GB of RAM. You will also need reliable wall power and a reliable Internet connection.
1. Download and install [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads).
1. Download the [Fedora 18 Desktop Edition (32-bit) ISO file](http://download.fedoraproject.org/pub/fedora/linux/releases/18/Live/i386/Fedora-18-i686-Live-Desktop.iso). You do ***not*** need to burn this to a CD or copy it to a USB drive.
1. Start up Oracle VM VirtualBox. Create a virtual machine with the Fedora operating system, 1536 MB of memory, and a 20 GB virtual hard disk.
1. In the virtual machine 'Display' settings, set the display video memory to 128 MB and enable 3D acceleration.
1. In the virtual machine 'Storage' settings, connect the virtual machine CD drive to the ISO file you downloaded.
1. Start the virtual machine and install Fedora 18 to it.
1. When the install is finished, it will ask you to reboot. Instead of rebooting, power off the virtual machine. Once the machine has shut down, go into the 'Settings -> Storage' menu and remove the ISO file from the virtual CD/DVD drive. Then start the virtual machine up again.
1. You will need to do some more setup. On the first setup screen, press the 'Forward' button. Press 'Forward' again on the second screen. On the third screen, create a user and add the user to the Administrators group, then press 'Forward'. On the 'Date and Time' screen, check the box labelled 'Synchronize date and time over the network' and press 'Forward'. On the final screen, just press 'Finish'. You will get an annoying dialog asking you if you are sure. Press 'No, do not send'.
1. Log in as the non-root user you created during the install. Open the 'Software Update' application and install all the required updates. This will take some time. When it finishes, reboot the virtual machine even if it didn't ask you to do so.
1. 'bash completion': The terminal application on Linux puts you in a program called the 'Bourne Again SHell (bash)'. This has a nifty feature called 'bash completion'. You can type the first part of a command or file name and press the 'Tab' key, and 'bash' will type the rest for you! If there's more than one possibility, you'll see them listed. Try it on the 'cd' command given below.
1. When the virtual machine comes back up, log in again. Open a terminal and type

    ```
    $ sudo yum install -y git  
    $ git clone http://github.com/znmeb/Computational-Journalism-Publishers-Workbench  
    $ cd Computational-Journalism-Publishers-Workbench  
    $ git checkout v1.5.0
    $ ./install-devtools.bash
    $ ./install-desktop.bash
    ```
1. In the VirtualBox 'Devices' menu, select 'Install guest additions'. Press the ***'Cancel'*** button if you are asked to open the media with the File Manager or run it.
1. In the terminal, type

    ```
    $ ./VirtualBoxSetup.bash
    ```
1. You may be asked if you wish to continue. If this happens, answer 'yes'. The script will then install the VirtualBox guest additions. Then the virtual machine will shut down.
1. After shutdown, go into the machine's 'Storage' settings and disconnect the virtual ISO file with the guest additions.
1. Take a snapshot of the machine in its present state. If something goes wrong further down the line in the install, you can drop back to this known good state.
1. Start the machine up again, log in and open a terminal. Type

    ```
    $ cd Computational-Journalism-Publishers-Workbench  
    $ ./install-platform.bash  
    $ ./install-base.bash
    ```
1. This will run quite a while. On my dual-core i5 laptop on typical coffee shop wireless, it takes about two hours. It is downloading most of the software over the Internet and compiling much of it from source.
1. Once the installs are done, shut down the virtual machine and take another snapshot.
