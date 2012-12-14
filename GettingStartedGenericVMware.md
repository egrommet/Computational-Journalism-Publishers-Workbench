## Quick Start - Generic Linux on VMware Player

1. System requirements: You'll need a Windows or Linux desktop/laptop with at least 3 GB of RAM. ***There is no free VMware Player for Macintosh!*** You will also need reliable wall power and a reliable Internet connection.
1. Download and install [VMware Player](http://www.vmware.com/products/player/).
1. Download a Linux install ISO image. You do ***not*** need to burn this image file to a CD/DVD or copy it to a USB drive. Supported Linux distributions are currently

    * [Fedora Linux 17 and 18 Beta](https://fedoraproject.org/)<br>
    * [Linux Mint 13 and later](http://www.linuxmint.com/oldreleases.php)<br>
    * [openSUSE 12.1](http://software.opensuse.org/122/en)<br>
    * [Mageia 2](http://www.mageia.org/en/downloads/)<br>
    * [Ubuntu 12.04 and later](http://www.ubuntu.com/download)<br>
1. Start up VMware Player. Press the 'Create a New Virtual Machine' button.
1. In the first panel, choose 'I will install the operating system later.' and press 'Next'.
1. Select 'Linux' for the guest operating system. Choose the version in the drop-down menu. For Linux Mint, choose 'Ubuntu' and for Mageia, choose 'Mandriva'. Then press 'Next'.
1. Choose a name for the virtual machine and press 'Next'.
1. In the 'Disk Size' menu, create a 20 GB virtual hard drive and press 'Next'.
1. In the next panel, just press 'Finish'. Press 'Close' in the final panel.
1. Next, go into the 'Edit virtual machine settings' menu.
1. Set the virtual machine memory to 1536 MB.
1. In the virtual machine 'CD/DVD' settings, connect the virtual machine CD drive to the ISO file you downloaded.
1. Press the 'Save' button.
1. Press the 'Play virtual machine' button.
1. Install Linux to the virtual machine as described in the documentation for the Linux distribution.
1. When the install is finished, it will ask you to reboot. Reboot the system.
1. Log in as the non-root user you created during the install. Open the distribution's software update application and install all the required updates. ***Do not skip this step!*** The update will take quite a while. At several points in the update, you may be asked about configuration files. Just press 'Enter' if this happens. When the software update finishes, ***reboot the virtual machine even if it didn't ask you to do so.***
1. Log in as the non-root user you created during the install. Open the distribution's software package installer and install 'git'. Then, open a terminal window and type

    ```
    $ git clone https://github.com/znmeb/Computational-Journalism-Publishers-Workbench  
    $ cd Computational-Journalism-Publishers-Workbench  
    $ git checkout v1.1.1
    $ ./install-devtools.bash
    $ ./install-desktop.bash
    $ ./remove-guest-tools.bash
    ```
1. After the guest tool removal completes, the virtual machine will reboot. When it comes back up, log in again. In the VMware Player 'Virtual Machine' menu, select 'Install VMware Tools...'. Press the 'Install' button.
1. Open a terminal and type

    ```
    $ cd Computational-Journalism-Publishers-Workbench  
    $ ./VMwareSetup.bash
    ```
1. You will be asked a number of questions. In all cases, just press 'Enter' and accept the default. After the guest tools are installed, the virtual machine will shut down and VMware Player will close.
1. After shutdown, go into the virtual machine's 'CD/DVD' settings and disconnect the virtual ISO file with the VMware Tools.
1. Start the machine up again, log in and open a terminal. Type

    ```
    $ cd Computational-Journalism-Publishers-Workbench  
    $ ./install-platform.bash  
    $ ./install-base.bash
    ```
1. This will run quite a while. On my dual-core i5 laptop on typical coffee shop wireless, it takes about two hours. It is downloading most of the software over the Internet and compiling much of it from source.
