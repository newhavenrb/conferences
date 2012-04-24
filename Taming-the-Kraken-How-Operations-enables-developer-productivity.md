**Presenter:** Nathen Harvey

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

## Notes

### From @benjaminoakes

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

## External Links

* [Some related website](http://www.example.com/)
