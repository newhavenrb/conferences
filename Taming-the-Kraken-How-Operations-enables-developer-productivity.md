**Presenter:** [Nathen Harvey](http://twitter.com/nathenharvey)

## Bio

> Nathen Harvey is the manager of Web Operations for CustomInk.com, a website that allows you to design and purchase custom apparel for your group or special event. Nathen is the co-organizer of the Washington DC MongoDB Users' Group and DevOps DC. Nathen contributes to open source projects including the Opscode Chef framework.  When not working or hosting meetups, Nathen enjoys going to concerts, drinking craft beer, and over sharing on sites like twitter, untappd, and foursquare.

## Abstract

> Are you having trouble launching new features because of friction between development and operations?  At CustomInk, we've reduced this friction by making changes to our teams, processes, and tools.  Come find out what we've been up to and learn how you can implement similar changes in your own environment.
>
> There's always a bit of tension when getting features from idea to production.  In this talk, we'll look at some of the changes CustomInk has made to reduce this friction and keep the new features coming.  Gone are the days of bi-monthly deploys, office pools dedicated to guessing when this deploy will be rolled back, and the ceremony surrounding the deploy-rollback-fix-deploy cycle.  Today, ideas flow from product managers to developers to production with ease thanks to a number of changes that we've made to our teams, processes and tools.
>
> During this talk, we'll look at:
>
> * How product managers drive the release cycle
>   * Ideas and customer feedback
>   * Prioritizing development requests
>   * Managing branch merges and deployments (yes, product managers can help here!)
>
> * How operations enables developer productivity
>   * Spinning up development environments - Vagrant, Chef
>   * Infrastructure Automation - Chef
>   * Enabling Continuous Deployment - Capistrano and caphub
>   * Failing gracefully - Fault-tolerant load balancing with ldirectord
>
> * How developers get their code running in production
>   * Staging environments
>   * Continuous Integration - Jenkins, Green Screen
>   * Staying on topic:  Deploying changes when they're ready
>   
> * Getting rid of the over-the-wall mentality - Dev & Ops working together
>   * Enabling developers to do it themselves
>   * Pair programing infrastructure automation
>   * Keeping the process light and the communication flowing

## Memorable Quotes

* "A deploy is like a prom if..."

## Notes
### @ZachMorek Notes

* Founded in 99
* 40+mm requests

### Past:
One team, a few apps
2 week sprints
Operations deploys straight to production

### Problems:
* Committing directly to master
* Merge conflicts
* Deploys rolling back
* Growing to 20 developers

### Deploys as proms
Build up is bigger than the result... anxiety, fear
Infrequent
Ceremony

### Deploy Problems
Office pools on when `cap deploy:rollback` emails would get sent
You consider custom t shirts for a deploy

### Fixes
Deploy early, deploy often
Deploy small independent changes
Deploy when ready
Redefine "done"
Moved from sprints to Kanban

### Changing the process
Product managers prioritize the queue
Disposable Servers
Each topic branche must have its own staging environment
Automating spinning up / tearing down staging environments

### Infrastructure as Code
Custom scripts
Capistrano
Chef
Gathering vagrant files together
"Hobo Jungle"
`cap jenkins:create`

### Greenscreen
A big visible chart (BVC) to monitor
A sinatra server
https://github.com/customink/greenscreen

How many sites does it take to make a shirt?  Around 9

Share deploy logic across apps using CapHub


### Build Process
merge
build
deploy
verify
get out of the way

Using the topic in an irc chat / campfire room
Have a queue on who is merging to master and deploying
Product manager to help with sequencing when necessary

Announcing the Deploy
Automating the ceremony: emails that go out

What's changed
Less time to change a site's copy
Deploy one thing at a time

There is no QA
There is testing, but no team that's dedicated to it

### How can you can get started
look at process
look at culture - may require going outside of engr org
automate everything (chef puppet cfengine) automate the heck out of everything
Enable everyone - development team to take ownership of getting their code into prod
They need new relic impacts
Use the right tools - listen, supporting culture, conversation, collaboration


### From @james\_gary

* CustomInk: 40+ million requests each week, over 1 million customers
* How it used to be
  * One team working on a few aps simultaneously
  * Two week sprints
  * Ops deploy at end of sprint
  * Problems
    * Devs worked directly in master branch, merge conflicts were common
    * Small changes sat for days waiting to be deployed
    * Deploys were often rolled back b/c of an issue with one part of the new code
    * Our team grew, more developers, more support
  * You might have a problem if a deploy is like the prom:
    * Happens rarely
    * The build-up is bigger than the result
    * Lots of ceremony
  * Or if it's like "All hands on deck"
  * Office pools for when `cap deploy:rollback` will happen
* How do you fix this?
  * Deploy early, deploy often
  * Deploy small, independent changes, right when the change is ready
* Redfeine the process
  * Redefine "done" = Your code is running/verified in production
  * Move from sprints to Kanban
* Disposable Serversa
  * Staging and verifying many smal changes in one or two staging enviornments doesn't work
  * Each topic branch must have its own staging environment
* Infrastructure as Code
  * Enable the reconstruction of the business from nothing but code, ap data backup, bare metal resources
  * Custom scripts
  * Capistrano
  * CFENgine, Puppet
* Chef
  * Come up with your policy / specs
  * Abstract the resources in your spec
  * Write recipes
  * Package recipes in cookbooks
  * Apply recipes to nodes
* Vagrant is a tool that manages virtual box instances, fully integrated with Chef
* Hobo Jungle
* One git repo with a Vagrantfile for launching each app
* Testing every topic branch
* "master is ALWAYS deployable
* We use Jenkins to test every branch 
* Custom Capistrano scripts make it easy

```
cap jenkins:create
cap jenkins:build
cap jenkins:status
cap jenkins:console
cap jenkins:delete
```

* Greenscreen
  * Big Visible Chart (BVC) to monitor our builds
  * Sinatra app with simple config
* Test every branch as you go
* Wait, how many apps does it take to make a custom shirt?
  * 20-25 apps in production
  * Most of the apps are Rails
  * Deployed with cap
  * Lots of identical deploy logic in each ap
  * Inconsistent deploy behavior
  * Ned a way to streamline
  * Caphub
    * Centralized cap for deploying multiple apps
    * cap apps:ecommerce:production deploy
    * cap apps:fulfillment:production deploy
* Deploying: Merge build deploy verify and get out of the way (because someone is right behind you ready to deploy too)
* Stay on "topic" in campfire room to sequence deploys
* Product mgr help with sequencing when it's important
* Some ceremony here (announcing the deploy)
* Automate the ceremony (cap deploy automates all of this)
  * Changelog and compare URL posted to Campfire
  * Blog updated
  * Email sent
* What's changed?
  * Minimized work in process
  * Shorter cycle times
  * Fewer integration bugs
  * People get agitated if / when deploys slow down (2 hrs is considered a while)
  * Deploy one thing at a time
  * Everyone deploys
  * Rollbacks are now the exception
* Developers do their own QA and verify their changes
* How can you get started?
  * Look at the process/culture
  * Automate everything
  * Enable everyone
  * Use the right tools
    * Listen to each other
    * Looks at culture and use conversation, collaboration
    * git, vagrant, chef, jenkins, greenscreen, campfirecapistrano, Caphub
* Thumbs up for feature toggles
* Deploys never disrupt users
* Prefer to push live, since users will notify them quicker of errors
* Took about a year to go from Point A to Point B (but no reason you can't go faster)
* Lots of manual testing for infrastructure testing (developing topic on Chef now)

### From @benjaminoakes

* Works for CustomInk
    * Since 1999
    * 40+ million request to app servers each week
* Used to
    * Have one team
    * Two-week sprints
    * Worked well except
    * Small changes sat for days waiting to deployed
    * One problem rolled back a whole deploy
    * A lot more developers now...
* A deploy is like a prom if...
    * ...it happens infrequently
    * ...it build-up bigger than the result
    * ...it has a lot of ceremony
        * Hold on everybody, we're going to deploy a change!
    * ...all hands are on deck
    * ...pools for when rollback will happen
* Deploy early, deploy often
    * Ready to go?  It goes!
    * Redefine "done"
    * Kanban vs sprints
    * Minimize work in progress
    * Product managers prioritize queue
    * Disposable servers; short lived staging instances
    * Each topic branch gets a staging env
    * Have to automate
    * "Infrastructure as code"
    * Scripting + Capistrano
    * Chef/Puppet, etc
* Chef
    * (Basics of chef here; going to leave that for someone else.  Links welcome! TODO)
    * Runs continually against nodes
    * Can use locally with `vagrant`
    * They have a "Hobo Jungle" for vagrant files (instead of their app's code)
* CI
    * They use Jenkins
    * Green Screen (see their github -- TODO add link)
* How many apps do you need for this shirt stuff?
    * They have lots of services
    * Number in the 20..25 range (see what I did there?  :) )
* Deploying
    * Lots of similar code
    * Needed to streamline
    * CapHub (TODO add link)
    * Deploys queued up
    * "merge build, deploy, verify, get out of the way"
    * Has a topic in Campfire
    * Product mangers for sequencing sometimes
    * Announce deploy
        * Blog, etc.  Try to automate
    * Reducing friction is key
    * Everyone deploys
    * Developer -> QA (by the developer) -> deploy
* How to get started
    * Look at your process/culture
    * Automate
    * More tools (and the right tool for the job)
* DevOps: a team
    * Listen
    * Culture + conversation + collaboration
* Q&A
    * Zero-downtime: approaching 100%
    * They prefer deploys during business hours
    * Their disposable servers are in EC2, but they have physical servers in a datacenter (since 1999)
    * They aren't comfortable with total automation (CI deploying to production)
    * How in depth are the staging environments?  Database has a copy of production data (shared DB).  Seems like they have the same infrastructure but in one VM.
    * Overhead of developer time?  (Rather than building up a set of changes)
    * Review via product managers... "fire teams".  Shared libs?  They don't have a good answer yet.
    * How long it'd take to adopt this workflow?  1 yr or more, team grew, learned more Chef, etc.
    * Why not use Chef for deploy?  Problem is shutting down multiple app servers.  But they do Chef searches in Capistrano.
    * New prod environment via VMs then DNS switch to deploy?  They'd like that, but physical hardware makes that difficult.
    * Server cruft happens.  They don't have a good answer yet.
    * Centralized logging?  They made `central_logger` (OSS).  MongoDB.  Paper Trail too.  Otherwise, distributed logging.

## Discussion

* What about feature toggles?  @benjaminoakes
    * I asked.  He said he loves them; they use them a lot.  @benjaminoakes
    * We've used "feature toggles" at the apache tier, directing specific users to specific app server ([@nathenharvey](http://twitter.com/nathenharvey))
    * We use a combination of custom feature flags and vanity, too. ([@nathenharvey](http://twitter.com/nathenharvey))
* Reasons for keeping vagrant files outside of app code?  @benjaminoakes
    * No real good reason.  Could just as easily be stored in the apps themselves.  Either would work well.  In fact, we've recently been discussing the merits of each approach.  ([@nathenharvey](http://twitter.com/nathenharvey))
* Should there be more configuration rather than hard-coding?  @benjaminoakes
    * Hmmm, by configuration do you mean automation?  Or something like Chef searches instead of hard-coding values?  In both cases the answer is "Yes!".  ([@nathenharvey](http://twitter.com/nathenharvey))

## External Links

* [Slides](http://speakerdeck.com/u/nathenharvey/p/taming-the-kraken-how-operations-enables-developer-productivity)
* [Video](http://www.confreaks.com/videos/882-railsconf2012-taming-the-kraken-how-operations-enables-developer-productivity)
* [Rate the talk](http://speakerrate.com/talks/9580-taming-the-kraken-how-operations-enables-developer-productivity)
* [Chef](http://www.opscode.com/chef)
* [Vagrant](http://vagantup.com/)
* [CapHub](https://github.com/railsware/caphub)
* [Jenkins](http://jenkins-ci.org)
* [CustomInk's GitHub](https://github.com/customink)
    * [Greenscreen](https://github.com/customink/greenscreen)
* [CustomInk](http://www.customink.com/)
