Continuous Integration
----------------------

* C42 made Goldberg
* ThoughtWorks made CruiseControl.rb and Go (does more pipelining stuff)

Traditional Model
-----------------

Actually has a lot of risk, delivers value late.

Long time between stages.

* Development
* Integration testing
* User Acceptance Testing
* Staging
* Production

Iteration Model
---------------

Every few days, quick(er) feedback

* Development
* Continuous Integration
* User Acceptance Testing on its own environmente
* Staging

Continuous Delivery Model
-------------------------

Same as above, but getting feedback, etc constantly and deploying very often (maybe even every few minutes).

Deploying to Production
-----------------------

* Commits want to be in production.  That's their goal in life.  But not all deserve to be there!
* CI gives birth to Release Candidates

* Unit tests: code correct?
* Integration: work with other stuff?
* Functional: do what it needs to?
* Manual: clicky clicky?
* Smoke tests: works on prod?

* Work on automating.  Especially regression.  But make sure you cover your bases -- did you test at the levels you need to?
* Continous Integration takes it to the next step and deploys to staging!
* Execute your tests in parallel if possible

Deployment
----------

* No separate deployment team
* Automating deployment is good
* Idea: Build artifacts are what you deploy
  * Build a binary: `tgz`, `rpm`, `deb`, `gem`
  * CI needs to be same env (in general)
* `gcc`, `rvm`, `git`: not in production
  * As little stuff on prod as you need!
* Chef/Puppet
  * Manage your server -- it's not a work of art

The Right Stuff
---------------

* Feature Branches
  * Unreleased stuff in a branch in VCS
* Feature Toggles
  * Deploy the feature, not turned on.  Turn it on later.
  * Good for long-running stories
  * `if feature?(:foo)`

But!

* Push for smaller features

Branching
---------

* Them: people to master
* Git flow-ish-ness
  * They don't like gitflow too much though

Takeaways
---------

* Software
  * Goldberg
  * Deployinator
* Continous Integration takes it to the next step and deploys to staging!  Manual to production, then smoke test.
* Bridge between Dev and Ops
