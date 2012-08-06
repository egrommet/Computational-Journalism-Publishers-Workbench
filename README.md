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

## Getting Started
1. There are two options: "bare metal", usually a dual-boot with Windows or MacOS X, or running as a guest machine inside a host virtualization ("hypervisor") platfrom. I run it both ways - my main development system is dual-booted with Windows 7 and Fedora 17 Linux. I've tested mostly with an Oracle VM VirtualBox host, but I know everything works with VMware Workstation, VMware Player and KVM.

    If you go with bare metal, you'll need at least a 32-bit machine with 1536 MB of RAM. The base distributions I've chosen, which use the LXDE desktop, are aimed at older systems. The recommended base systems are, in no particular order:

    [Fedora LXDE Desktop](http://spins.fedoraproject.org/lxde/)
    [Lubuntu 12.04](https://help.ubuntu.com/community/Lubuntu/GetLubuntu)
    [openSUSE 12.2 Release Candidate 2](http://software.opensuse.org/developer/en)

    If you go with a hypervisor, you will need a host system with at least 3 GB of RAM. This is the path I recommend for beginners. When you create the virtual machine, you'll need to allocate a 16 GB disk drive and 1536 MB of RAM minimum. I recommend Oracle VM VirtualBox as a hypervisor for beginners. The user interface is the same whether your host is Windows, MacOS X or Linux, and it has the so-called "seamless" mode. In seamless mode, your guest machine's menu and application windows appear on your host's desktop.

    [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads) (available for Linux, Windows and Macintosh)

    In either case, you'll need wall power and Internet connectivity. Most of the software in the workbench is downloaded from the Internet, and a fair amount of it is compiled from source. On my dual-core Intel i5 with 8 GB of RAM a full install typically takes two hours in a guest machine.
2. Boot up Linux and log in as a non-root user.
3. Install _git_ using the Linux package manager.
4. Open a terminal window and type

```
$ git clone http://github.com/znmeb/Computational-Journalism-Publishers-Workbench  
$ cd Computational-Journalism-Publishers-Workbench  
$ git checkout v0.1.0
$ ./run-me-first.bash  
$ sudo ./install-all.bash  
```

    This will take quite a while. It is downloading most of the software over the Internet and compiling much of it from source. Typically on a modern laptop in a virtual machine using coffee shop wireless it takes about two hours.

## Issue tracker
I'm using the [Github issue tracker](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/issues) on this project, although you can also send me a message if you're a Github member.

## License
One of the major components, [RStudio](https://github.com/rstudio/rstudio), is licensed AGPL3 (Affero GNU Public License, version 3). So that's the license I'm using for this project.

## Main upstream projects

* [Fedora LXDE Desktop](http://spins.fedoraproject.org/lxde/)
* [Lubuntu 12.04](https://help.ubuntu.com/community/Lubuntu/GetLubuntu)
* [openSUSE 12.2 Release Candidate 2](http://software.opensuse.org/developer/en)
* [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads) (available for Linux, Windows and Macintosh)
* [TeX Live](http://www.tug.org/texlive/acquire-netinstall.html) (available for Windows and Macintosh)
* [R Patched](ftp://ftp.stat.math.ethz.ch/Software/R/) (available for Windows and Macintosh)
* [GGobi](http://www.ggobi.org/downloads/) (available for Windows and Macintosh)
* [R Studio](http://rstudio.org/download/) (available for Windows and Macintosh)
* [R Commander](http://socserv.mcmaster.ca/jfox/Misc/Rcmdr/) (available for Windows and Macintosh)
* [LyX](http://www.lyx.org/Download) (available for Windows and Macintosh)
* [Sigil](http://code.google.com/p/sigil/downloads/list) (available for Windows and Macintosh)
* [Calibre](http://calibre-ebook.com/download) (available for Windows and Macintosh)
* [FreeMind](http://sourceforge.net/projects/freemind/files/freemind/0.9.0/) (available for Windows and Macintosh)
* [Bluefish](http://bluefish.openoffice.nl/download.html) (available for Windows and Macintosh)
