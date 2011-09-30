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

Takeaways
---------

* Continous Integration takes it to the next step and deploys to staging!  Manual to production, then smoke test.
* Bridge between Dev and Ops
