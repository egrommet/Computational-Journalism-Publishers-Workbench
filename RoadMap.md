## Road Map

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
