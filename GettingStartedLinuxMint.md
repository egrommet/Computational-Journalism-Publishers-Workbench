## Quick Start - Linux Mint 13 - MATE Desktop

Note: if you get stuck, have a look at the screenshots from an install at

[https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/tree/master/Book/LinuxMintScreenshots](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/tree/master/Book/LinuxMintScreenshots)

1. System requirements: You'll need a Windows, Macintosh or Linux desktop/laptop with at least 3 GB of RAM. You will also need reliable wall power and a reliable Internet connection.
1. Download and install [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads).
1. Download [Linux Mint 13 "Maya" - MATE no-codecs (32-bit)](http://www.linuxmint.com/edition.php?id=109). You do ***not*** need to burn this to a CD or copy it to a USB drive.
1. Start up Oracle VM VirtualBox. Create a virtual machine with the Ubuntu operating system (Linux Mint is based on Ubuntu), 1536 MB of memory, and a 16 GB virtual hard disk.
1. In the virtual machine Display settings, set the display video memory to 128 MB and enable 3D acceleration.
1. In the virtual machine Storage settings, connect the virtual machine CD drive to the ISO file you downloaded.
1. Start the virtual machine and install Linux Mint to it.
1. When the install is finished, it will ask you to reboot. During the reboot, it will pause so you can remove the ISO file from the virtual CD drive. When it does, go into the VirtualBox "Devices" menu and select "CD/DVD Devices -> Remove disk from virtual drive." Then press "Enter" and the machine will reboot.
1. Log in as the non-root user, open a terminal and type

    ```
    $ sudo apt-get update
    $ sudo apt-get upgrade -y
    ```
1. The update will take quite a while. When it has finished, reboot the virtual machine again.
1. When it comes back up, log in again. In the VirtualBox "Devices" menu, select "Install guest additions". Press the ***"Cancel"*** button if you are asked to open the media with the File Manager or run it.
1. Open a terminal and type

    ```
    $ sudo apt-get install -y git
    $ git clone http://github.com/znmeb/Computational-Journalism-Publishers-Workbench  
    $ cd Computational-Journalism-Publishers-Workbench  
    $ git checkout v0.4.0
    $ ./run-me-first.bash  
    $ sudo ./VirtualBoxSetup.bash
    ```
1. The script will install the LXDE desktop and the VirtualBox guest additions. Then the virtual machine will shut down.
1. After shutdown, go into the machine's Storage settings and disconnect the virtual ISO file with the guest additions.
1. Take a snapshot of the machine in its present state. If something goes wrong further down the line in the install, you can drop back to this known good state.
1. Start the machine up again, log in and open a terminal. Type

    ```
    $ cd Computational-Journalism-Publishers-Workbench  
    $ sudo ./install-all.bash  
    ```
1. This will run quite a while. On my dual-core i5 laptop on typical coffee shop wireless, it takes about two hours. It is downloading most of the software over the Internet and compiling much of it from source.
1. The final step is to install the non-root components. These are libraries and applications that run as a non-root user. Type

    ```
    $ cd non-root
    $ ./install-all.bash
    ```
1. This will install Google Refine, Maqetta and the Perl libraries.
