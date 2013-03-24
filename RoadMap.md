## Road Map

### Release 2.7.0
1. Next cutesy release code name: "You don't - you get down off a goose!"
1. As you may have noticed from my tweet stream, I've been curating general [computational and data journalism](http://www.scoop.it/t/computational-and-data-journalism) stories and [R for Journalists](http://www.scoop.it/t/r-for-journalists) 'tool tips' on two Scoop.it topics. While that's a convenient way to provide quick distribution, it's not integrated with the workbench.<br><br>
So my plan is to expand the [Github project wiki](https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/wiki) with more of this kind of information and to phase out the Scoop.it topics. My inspiration is Hadley Wickham's [Advanced R Programming](https://github.com/hadley/devtools/wiki) wiki.

### Release 2.6.0
1. Next cutesy release code name: "Why, is one missing?"
1. Riak is on hold for a bit. My highest priority right now is getting some test applications done using Shiny Server.
1. Those who have been following my data and computational journalism projects over the past few years know that one of my long-term goals is for the tools to be available on Windows desktops / laptops. While I personally prefer Linux for numerous reasons, Windows is much more readily available in newsrooms.<br><br>
This week, I discovered a project that brings me much closer to that goal. It's an R package called [installr](http://cran.r-project.org/web/packages/installr/index.html). On a Windows R installation, 'installr' will update R to the latest stable version and install numerous other packages, all from the R console. This includes the MikTeX environment, RStudio Desktop, git and quite a few other tools. With 'installr' and RStudio, a Windows machine can become a first-class open source computational journalism platform just like a Linux desktop. Here's the [Github URL](https://github.com/talgalili/installr).<br><br>
So I am looking at ways to integrate 'installr' into a spin-off of the workbench for Windows users. I'm not sure yet whether this will be a separate project or part of the Computational Journalism Publishers Workbench.

### Release 2.5.0
1. Next cutesy release code name: "A veiled threat!".
1. The next release will probably have Riak, built from source. I need to dig into what it can do and how that's relevant to computational journalism, and the best way to do that is to deploy it. Meanwhile, read [Seven Databases in Seven Weeks by Eric Redmond and Jim R. Wilson](http://j.mp/Xycr5A) and imagine the possibilities.
1. Django and Rails will be options in some future release. I'm holding off until the course materials for [For Journalism](http://kck.st/10XiAfn) start to take shape. The plan is that those courses will run "out of the box" on the workbench. Meanwhile, please [join me in backing For Journalism](http://kck.st/10XiAfn).
1. I'm planning to add [Beancounter](http://search.cpan.org/~edd/beancounter_0.8.10/) as a PostgreSQL test case. I'm hoping to get this into 2.6.0.
1. The Perl modules / local::lib infrastructure will be back as an option. Again, I'm not sure which release this will be in.
1. openSUSE 12.3 is scheduled for release on March 13, 2013. I've tested a few things on it and I believe it will support everything in the workbench. In addition, it gives me another option for the CompJounoStick project. So I am probably going to resurrect the openSUSE scripts once the 12.3 release happens.

### Release 2.4.0
1. Redis 2.6 will be in the next release for sure. It almost made it into 2.4.0, but I wanted to start a weekly release schedule on Mondays and it wasn't quite ready.
1. There's a distinct possibility I'll be putting Meteor in the next release. There's an inaugural meetup of a Portland, Oregon Meteor group and once I get some ideas of how it fits into computational journalism, I'll be adding it.
1. I'm also looking at Riak again. Basho, the company that makes Riak, has a lab here in Portland now and I know two of the developers.
1. I did test a bit on Debian 'Wheezy'. I had some display issues with it running as a qemu-kvm guest; GNOME 3 comes up in fallback mode and doesn't seem to be able to get into the full GNOME shell. That's not a show-stopper; the intent is that the workbench should work with any Linux desktop. But if you have your heart set on the full GNOME 3 experience you might be disappointed.

### Release 2.3.0
1. The only major additional options I have planned for the workbench are
	* Restoring Redis (built from source), and 
	* Adding Shiny, including Shiny Server.
1. Synchronization with [CompJournoStick](https://github.com/znmeb/CompJournoStick) is a work in progress. The major features are in place, but I have quite a bit of "plumbing" I want to get done before I do another release. The biggest piece of this is integrating R code from CRAN as RPMs. Fedora has a tool that automates a huge part of this, called [R2spec](https://fedoraproject.org/wiki/Packaging:R). This is a good bit of effort and it won't port easily to the Debian/Ubuntu/Linux Mint world, but for CompJournoStick I consider it mandatory. I'd also like to package RStudio but that may be too much for this round.
1. Testing: at the moment my plan is to test on
	* Ubuntu 13.04
	* Debian 7.0 ("Wheezy")
1. R 3.0: It's coming down the pike some time in April. My best guess is that it won't be in the next Ubuntu or Debian releases, but it might make it into Fedora 19. Once I get the dates nailed down I'll come up with a road map for R.

### Release 2.0.0
1. Now that this release is done, I'll be revising the [CompJournoStick](https://github.com/znmeb/CompJournoStick) code to draw from this repository in constructing media. That way, the bill of materials for the stick will be the same as the Fedora version of this workbench.
1. I'm backing the [For Journalism](http://www.kickstarter.com/projects/gotoplanb/for-journalism) project on Kickstarter. I'm tracking their materials and will be adding software to this project and CompJournoStick to run all of their code.
1. I've looked at openSUSE 12.3 and there are some critical tools missing from their repositories. So I will not be supporting openSUSE going forward.
1. I'm planning to support Ubuntu 13.04 and Linux Mint 15. I don't have enough disk space on my test machines to test Ubuntu on bare metal, however.
1. The next release will have Redis 2.6 back in. I removed it because the Linux repositories are still shipping 2.4, and I wanted to install it from Linux rather than build it from source.
1. The next release will have Shiny server and Node.js. It may also have Meteor, which seems to be the up-and-coming wrapper for Node.js.
