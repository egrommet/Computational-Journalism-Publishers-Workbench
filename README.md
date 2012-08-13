## I Keep Six Honest Serving Men
I keep six honest serving-men<br>
(They taught me all I knew);<br>
Their names are What and Why and When<br>
And How and Where and Who.<br>
[(RudyardKipling, from "The Elephant's Child" in Just So Stories).](http://c2.com/cgi/wiki?SixHonestServingMen)

## Why?
Independent journalists today work in a world dominated by two trends:
* Real-time many-to-many communications platforms, and
* Large sets of complex data with stories waiting to be told.

### Real-time many-to-many communications platforms
* Hundreds of millions of Facebook and Twitter accounts almost everywhere in the world
* Millions of active Twitter users
* Complex patterns of interactions around people, places and events
* Intricate and changing connection patterns between people
* ***People break and discuss the news in real time on Twitter.***

### Large sets of complex data with stories waiting to be told
* Government data - national, regional, and local
* Business and financial data
* Political fundraising and vote tabulation data
* Environmental and climate data
* Social network data
* And yes - traffic and sports data too

## What's in the workbench?
* ***100 percent open source technologies!***
* A complete Linux workstation, plus
* Real-time Twitter data collection via REST, Search and User Streams APIs
* PDF data extraction tools
* Plus ...

### Tools for collecting, managing, analyzing and presenting data
* Numerical
* Financial and economic
* Geospatial / mapping
* Twitter and other text data
* Social networks and graphs
* Web page, PDF and eBook creation tools

## Who is it for?
* Journalism students: high school, community college and beyond
* Independent journalists: researchers, reporters, editors, publishers

## Why 100 percent open source?
* Open source software is robust.
* Open source software is low cost.

### Robustness
The components of the Computational Journalism Publishers Workbench are proven technologies in wide use. 
* Tools are crafted by highly-motivated self-regulated communities of experts.
* Security flaws, functionality defects and performance issues are rapidly found and fixed.
* Peer review process yields software that is usually more efficient than commercial counterparts.

### Low cost
* The software in the Computational Journalism Publishers Workbench is freely downloadable without legal restrictions.
* A wide range of documentation and training material for the tools is available for free on the World-Wide Web.
* ***Functionality that would cost thousands of dollars in commercial licenses is available for the cost of a download!***

## I Keep Six Honest Serving Men
I keep six honest serving-men<br>
(They taught me all I knew);<br>
Their names are What and Why and When<br>
And How and Where and Who.<br>

### The Rest of the Story
(Did you know there was more?)

I send them over land and sea,<br>
I send them east and west;<br>
But after they have worked for me,<br>
***I*** give them all a rest.<br>

***I*** let them rest from nine till five,<br>
For I am busy then,<br>
As well as breakfast, lunch, and tea,<br>
For they are hungry men;<br>

But different folk have different views:<br>
I know a person small -<br>
She keeps ten million serving-men,<br>
Who get no rest at all!<br>

She sends 'em abroad on her own affairs,<br>
From the second she opens her eyes -<br>
One million Hows, two million Wheres,<br>
And seven million Whys!<br>

## Quick Start
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
1. This will install Google Refine, Maqetta and the Perl libraries required to run the Twitter Research Tools.

## Issue tracker
I'm using the [Github issue tracker](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/issues) on this project, although you can also send me a message if you're a Github member.

## License
One of the major components, [RStudio](https://github.com/rstudio/rstudio), is licensed AGPL3 - [Affero GNU Public License, version 3](http://www.gnu.org/licenses/agpl-3.0.txt). So that's the license I'm using for this project.

## Main upstream projects
### Linux Distributions
* [Fedora LXDE Desktop](http://spins.fedoraproject.org/lxde/)
* [Lubuntu 12.04](https://help.ubuntu.com/community/Lubuntu/GetLubuntu)
* [openSUSE 12.2 Release Candidate 2](http://software.opensuse.org/developer/en)

### Applications / Tools (all are available for Windows, Macintosh and Linux desktops/laptops)
* [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [TeX Live](http://www.tug.org/texlive/acquire-netinstall.html)
* [R Patched](ftp://ftp.stat.math.ethz.ch/Software/R/)
* [GGobi](http://www.ggobi.org/downloads/)
* [R Studio](http://rstudio.org/download/)
* [R Commander](http://socserv.mcmaster.ca/jfox/Misc/Rcmdr/)
* [LyX](http://www.lyx.org/Download)
* [Sigil](http://code.google.com/p/sigil/downloads/list)
* [Calibre](http://calibre-ebook.com/download)
* [FreeMind](http://sourceforge.net/projects/freemind/files/freemind/0.9.0/)
* [Bluefish](http://bluefish.openoffice.nl/download.html)
* [Google Refine](http://code.google.com/p/google-refine/)
* [Maqetta](http://maqetta.org/)
