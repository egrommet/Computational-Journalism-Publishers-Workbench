## Quick Start - Fedora 17

Note: if you get stuck, have a look at the screenshots from an install at

[https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/tree/master/Book/FedoraInstallScreenshots](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/tree/master/Book/FedoraInstallScreenshots).

1. System requirements: You'll need a Windows, Macintosh or Linux desktop/laptop with at least 3 GB of RAM. You will also need reliable wall power and a reliable Internet connection.
1. Download and install [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads).
1. Download the [Fedora LXDE 32-bit Desktop ISO file](http://download.fedoraproject.org/pub/alt/releases/17/Spins/i686/Fedora-17-i686-Live-LXDE.iso). You do ***not*** need to burn this to a CD or copy it to a USB drive.
1. Start up Oracle VM VirtualBox. Create a virtual machine with the Fedora Linux operating system, 1536 MB of memory, and a 16 GB virtual hard disk.
1. In the virtual machine Display settings, set the display video memory to 128 MB and enable 3D acceleration.
1. In the virtual machine Storage settings, connect the virtual machine CD drive to the ISO file you downloaded.
1. Start the virtual machine and install Fedora to it.
1. When the install is finished, it will ask you to reboot. Instead, shut the machine down, go into the Storage settings and remove the ISO file from the virtual CD drive.
1. Start the machine. You will go through a brief setup, including the creation of a non-root user.
1. Log in as the non-root user, open a terminal and type

    ```
    $ sudo yum update -y
    ```
1. The update will take quite a while. When it has finished, reboot the virtual machine.
1. When it comes back up, log in again. In the VirtualBox "Devices" menu, select "Install guest additions". Press the ***"Cancel"*** button if you are asked to open the media with the File Manager or run it.
1. Open a terminal and type

    ```
    $ sudo yum install -y git
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
