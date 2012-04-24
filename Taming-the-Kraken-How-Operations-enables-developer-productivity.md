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

## Memorable Quotes

* "A deploy is like a prom if..."

## Notes

### From @benjaminoakes

* Works for CustomInk
    * Since 1999
    * 40+ milion request to app servers each week
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

### From @james_gary

## Discussion

* What about feature toggles?  @benjaminoakes
* Reasons for keeping vagrant files outside of app code?  @benjaminoakes
* Should there be more configuration rather than hard-coding?  @benjaminoakes

## External Links

* [Chef](http://www.opscode.com/chef)
* [Vagrant](http://vagantup.com/)
