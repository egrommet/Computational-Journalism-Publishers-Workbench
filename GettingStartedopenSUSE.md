## Quick Start - openSUSE 12.2 Release Candidate 2

Note: if you get stuck, have a look at the screenshots from an install at

[https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/tree/master/Book/openSUSEInstallScreenshots](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/tree/master/Book/openSUSEInstallScreenshots)

1. System requirements: You'll need a Windows, Macintosh or Linux desktop/laptop with at least 3 GB of RAM. You will also need reliable wall power and a reliable Internet connection.
1. Download and install [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads).
1. Download the [openSUSE 12.2 RC 2 Installation Medium DVD](http://software.opensuse.org/developer/en). You do ***not*** need to burn this to a CD or copy it to a USB drive.
1. Start up Oracle VM VirtualBox. Create a virtual machine with the openSUSE Linux operating system, 1536 MB of memory, and a 16 GB virtual hard disk.
1. In the virtual machine Display settings, set the display video memory to 128 MB and enable 3D acceleration.
1. In the virtual machine Storage settings, connect the virtual machine CD drive to the ISO file you downloaded.
1. Start the virtual machine and install openSUSE Linux to it. You will need to install the LXDE desktop.
1. When the install is finished, it will reboot. After the reboot, an automatic configuration step will begin. Then you will get a login screen.
1. Log in as the non-root user you created during the installation, open a terminal and type

    ```
    $ sudo zypper update -y
    ```
1. The update can take quite a while. When it has finished, shut down the virtual machine and remove the installation DVD from the virtual DVD drive using the Storage settings contol panel. Then start the machine up again.
1. When it comes back up, log in again. In the VirtualBox "Devices" menu, select "Install guest additions". Press the ***"Cancel"*** button if you are asked to open the media with the File Manager or run it.
1. Open a terminal and type

    ```
    $ sudo zypper install -y git
    $ git clone http://github.com/znmeb/Computational-Journalism-Publishers-Workbench  
    $ cd Computational-Journalism-Publishers-Workbench  
    $ git checkout v0.2.0
    $ sudo ./VirtualBoxSetup.bash
    ```
1. The script will install the VirtualBox guest additions. Then the virtual machine will shut down.
1. After shutdown, go into the machine's Storage settings and disconnect the virtual ISO file with the guest additions.
1. Take a snapshot of the machine in its present state. If something goes wrong further down the line in the install, you can drop back to this known good state.
1. Start the machine up again, log in and open a terminal. Type

    ```
    $ cd Computational-Journalism-Publishers-Workbench  
    $ ./run-me-first.bash  
    $ sudo ./install-all.bash  
    ```
1. This will run quite a while. On my dual-core i5 laptop on typical coffee shop wireless, it takes about two hours. It is downloading most of the software over the Internet and compiling much of it from source.
1. The final step is to install the non-root components. These are libraries and applications that run as a non-root user. Type

    ```
    $ cd non-root
    $ ./install-all.bash
    ```
1. This will install Google Refine, Maqetta and the Perl libraries.
