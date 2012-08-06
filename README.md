## I Keep Six Honest Serving Men
I keep six honest serving-men  
(They taught me all I knew);   
Their names are What and Why and When  
And How and Where and Who.  
[(RudyardKipling, from "The Elephant's Child" in Just So Stories).](http://c2.com/cgi/wiki?SixHonestServingMen)

## Why?
Independent journalists today work in a world dominated by two trends:
* Real-time many-to-many communications platforms, and
* Large sets of complex data with stories waiting to be told.

### Real-time Many-to-Many Communications Platforms
* Hundreds of millions of Facebook and Twitter accounts almost everywhere in the world
* Millions of active Twitter users
* Complex patterns of interactions around people, places and events
* Intricate and changing connection patterns between people
* ***People break and discuss the news in real time on Twitter.***

### Large Sets of Complex Data with Stories Waiting to be Told
* Government data - national, regional, and local
* Business and financial data
* Political fundraising and vote tabulation data
* Environmental and climate data
* Social network data
* And yes - traffic and sports data too

## What's In The Workbench?
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

## Who Is It For?
* Journalism students: high school, community college and beyond
* Freelance journalists: researchers, reporters, editors, publishers

## Why 100 Percent Open Source?
* Open source software is robust.
* Open source software is low cost.

### Robustness
The components of the Computational Journalism Publishers Workbench are proven technologies in wide use. 
* Tools are crafted by highly-motivated self-regulated communities of experts.
* Security flaws, functionality defects and performance issues are rapidly found and fixed.
* Peer review process yields software that is usually more efficient than commercial counterparts.

### Low Cost
* The software in the Computational Journalism Publishers Workbench is freely downloadable without legal restrictions.
* A wide range of documentation and training material for the tools is available for free on the World-Wide Web.
* ***Functionality that would cost thousands of dollars in commercial licenses is available for the cost of a download!***

## I Keep Six Honest Serving Men
I keep six honest serving-men  
(They taught me all I knew);   
Their names are What and Why and When  
And How and Where and Who.   

### The Rest of the Story
(Did you know there was more?)

I send them over land and sea,  
I send them east and west;   
But after they have worked for me,  
***I*** give them all a rest.  

***I*** let them rest from nine till five,  
For I am busy then,   
As well as breakfast, lunch, and tea,  
For they are hungry men;   

But different folk have different views:  
I know a person small -   
She keeps ten million serving-men,  
Who get no rest at all!   

She sends 'em abroad on her own affairs.  
From the second she opens her eyes -   
One million Hows, two million Wheres,  
And seven million Whys! 

## Getting Started
1. Install a modern Linux desktop. At a minimum, you will need the LXDE desktop. I've tested the scripts on Lubuntu 12.04, Fedora 17 LXDE re-spin and openSUSE 12.2 Release Candidate 2 with the LXDE desktop. You can do this in either a virtual machine or on bare metal.
2. On bare metal, you'll need at least 1.5 GB of RAM, but it should work on a 32-bit machine. In a virtual machine, allocate 16 GB of disk space and 1.5 GB of RAM. Your host should have at least 3 GB of RAM in this case.
3. You'll need a persistent Internet connection and a power source; the install downloads most of the software from the World-Wide Web and compiles a fair amount of it from source.
4. Install _git_ using the Linux package manager.
5. Open a terminal window and type

```
$ git clone http://github.com/znmeb/Computational-Journalism-Publishers-Workbench  
$ cd Computational-Journalism-Publishers-Workbench  
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
