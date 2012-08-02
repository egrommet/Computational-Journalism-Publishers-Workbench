Computational Journalism Studio
===============================

A minimalist workbench for computational journalism publishers

Alpha test instructions:

1. Install VirtualBox.
1. [Download the appliance from http://susestudio.com/a/RQrRBY/computational-journalism-studio](http://susestudio.com/a/RQrRBY/computational-journalism-studio).
1.  Create a VirtualBox virtual machine with 1536 MB of RAM, the "vmdk" from the appliance as the disk drive and a bridged network.
1. Boot up the virtual machine.
1. Log in as "studio". You will be required to change the password the first time you log in and every 30 days thereafter.
1. Open an X terminal window and type "su -". You'll be required to change the "root" password the first time and every 30 days thereafter.
1. Type "exit" to get back to the "studio" login.
1. Type "./clone-github-repository.bash". This will download the code to complete the installation.
1. Type "cd Computational-Journalism-Studio".
1. In the VirtualBox menu, do "Devices -> Install Guest Additions".
1. Type "./run-me-first.bash". You'll need to set up an NTP server, set the time zone, and open the firewall on TCP port 8787. After you've done all that, the script will install the VirtualBox guest additions.
1. Type "cd RStudio". Then type "/install-all.bash".
1. [File issues at https://github.com/znmeb/Computational-Journalism-Studio/issues](https://github.com/znmeb/Computational-Journalism-Studio/issues).
1. Rinse, repeat.
