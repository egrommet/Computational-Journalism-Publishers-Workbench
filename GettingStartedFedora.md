## Quick Start - Fedora 17

1. System requirements: You'll need a Windows, Macintosh or Linux desktop/laptop with at least 3 GB of RAM. You will also need reliable wall power and a reliable Internet connection.
1. Download and install [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads).
1. Download a [Fedora Desktop ISO file](https://fedoraproject.org/en/get-fedora-options). Any Fedora 17 desktop should work. You do ***not*** need to burn this to a CD or copy it to a USB drive.
1. Start up Oracle VM VirtualBox. Create a virtual machine with the Fedora Linux operating system, 1536 MB of memory, and a 20 GB virtual hard disk.
1. In the virtual machine Display settings, set the display video memory to 128 MB and enable 3D acceleration.
1. In the virtual machine Storage settings, connect the virtual machine CD drive to the ISO file you downloaded.
1. Start the virtual machine and install Fedora to it.
1. When the install is finished, it will ask you to reboot. Instead, shut the machine down, go into the Storage settings and remove the ISO file from the virtual CD drive.
1. Start the machine. You will go through a brief setup, including the creation of a non-root user.
1. Log in as the non-root user you just created. Open a terminal and type

    ```
    $ sudo yum install -y git<br>
    $ git clone http://github.com/znmeb/Computational-Journalism-Publishers-Workbench<br>
    $ cd Computational-Journalism-Publishers-Workbench<br>
    $ git checkout v1.0.0<br>
    $ ./install-platform.bash
    ```
1. The update will take quite a while. The machine will reboot after all the platform components have been installed. 
1. When it comes back up, log in again. In the VirtualBox "Devices" menu, select "Install guest additions". Press the ***"Cancel"*** button if you are asked to open the media with the File Manager or run it.
1. Open a terminal and type

    ```
    $ ./VirtualBoxSetup.bash
    ```
1. The script will install the VirtualBox guest additions. Then the virtual machine will shut down.
1. After shutdown, go into the machine's Storage settings and disconnect the virtual ISO file with the guest additions.
1. Take a snapshot of the machine in its present state. If something goes wrong further down the line in the install, you can drop back to this known good state.
1. Start the machine up again, log in and open a terminal. Type

    ```
    $ cd Computational-Journalism-Publishers-Workbench<br>
    $ ./install-all.bash  
    ```
1. This will run quite a while. On my dual-core i5 laptop on typical coffee shop wireless, it takes about two hours. It is downloading most of the software over the Internet and compiling much of it from source.
