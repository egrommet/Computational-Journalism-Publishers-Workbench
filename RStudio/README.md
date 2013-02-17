# RStudio

## Usage

1. Open a terminal and type

	./install-RStudio.bash
1. This will run quite a while. It is downloading RStudio and some fairly large helper tools and compiling the whole thing.
1. When it completes the installation, it will open a platform-specific firewall settings tool. 
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
