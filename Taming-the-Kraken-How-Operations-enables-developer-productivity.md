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

## @ZachMorek Notes

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

## External Links

* [Some related website](http://www.example.com/)
http://vagrantup.com/
http://www.customink.com/
https://github.com/customink
http://jenkins-ci.org/
https://github.com/railsware/caphub
http://www.opscode.com/
