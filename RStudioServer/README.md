# RStudio Server

## Usage

1. Open a terminal and type

	```
	./install-all.bash
	```
1. This will run quite a while. It is compiling the parts of RStudio Server that weren't compiled when RStudio Desktop was built in R-platform.
1. When it completes the installation, you will need to run a configuration script to use RStudio Server. ***This will allow both local users on your desktop and remote users on your LAN to access RStudio Server. If that's not what you want, don't do this!*** When you're ready to deploy the server, open a terminal and type

	```
	cd ~/Computational-*/RStudioServer
	./configure-server.bash
	```
This will open a platform-specific firewall settings tool. 
	* On Fedora, you will need to go to the 'Ports' tab. For both 'Runtime Configuration' and 'Persistent Configuration', open port 8787 for the TCP protocol.
	* On Linux Mint / Ubuntu, press the 'Unlock' button and authenticate. Set the Firewall Status to "On". Then, press the '+' button to enter the dialog for adding rules.
		* Go to the 'Simple' tab.
		* Enter '8787' in the 'Port or service' field and press 'Add'.
		* Change the drop-down 'In' to 'Out' and repeat.
		* Press 'Close'.
		* Select 'Quit' in the 'File' menu.
1. Firefox should open up and browse to the RStudio Server.
1. [Open an issue on Github](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/issues/new) if you have any questions or problems.

## Upstream Projects
* [RStudio](http://www.rstudio.com/)

## Suggested Reading
* [Learning RStudio for R Statistical Computing by Mark van der Loo, Edwin de Jonge](http://j.mp/14Z5k8d)
* [Getting Started with RStudio by John Verzani](http://j.mp/XQsgSb)
