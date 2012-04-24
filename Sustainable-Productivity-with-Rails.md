**Presenter:** Xavier Shay

## Bio

> Xavier Shay recently emigrated from Australia to San Francisco to work on the engineering team at Square. Prior, he worked on large Ruby on Rails projects at The Conversation, NZX, Redbubble, and mentored many more. In 2010 he presented a world tour of a training course titled "Your Database Is Your Friend". He has been working with Ruby on Rails for half a decade, and has published and contributed to over 80 open source projects according to GitHub.

## Abstract

> Ruby on Rails claims to be "optimized for programmer happiness and sustainable productivity." I strongly disagree with the latter assertion. In this talk I will channel my half decade of industry Rails experience into expounding this position and providing constructive feedback as to what needs to change---in both the framework and the community---before we can support this claim. I'll also cover practical techniques you can use to be sustainably productive on your own projects in the meantime.

## Notes

### From @james\_gary

* Prototype vs your app
  * Good for prototyping, but bad for long projects
* Easy vs Simple
  * Rails is easy, but not simple
#### Data
  * The way you model data determines your code
  * Rails encourages the use of poor techniques for modeling and handling data, and further discourages the use of better techniques
  * Data that lacks integrity are by definition harder to work with
  * Data that lacks integrity are harder to understand
  * User.validates_uniqueness_of :name susceptible to race condition
    * Add a unique index, then rescue
    * What goes in the rescue of ActiveRecord::RecordNotUnique?
    * We re-invent the wheel here, and aren't being productive
  * User.has_one :account also susceptible
  * Relationships and uniqueness have a *high risk* of data corruption, incredibly common
  * Database constraints are the best tool to preserve integrity, and Rails does not support most of these
  * Rails does not support the simplest tool for the job
  * More nitpicks:
    * No conventions
    * Fixtures
    * Schema format
    * MySQL structure dumper
    * Migrations (can't write foreign key without SQL (which is fine, but it's not called out))
    * Polymorphic Relationships
      * DRY is about code, it's okay to duplicate data
  * We go for a pretty DSL rather than the best tool
#### Code in the small
  * `ThreasholdCheck.new :>, 'coverage/percent', 90`
  * reify: Make (something abstract) more concrete or real
    * Actually may improve code
* Class documentation describes how the class fits into the bigger picture
  * This type of doc cannot be replaced by 'self-documenting' code
  * Provide documentation of what a developer (actually in the wild) wants
    * Documentation for what to do when a job fails (how to restart, why, etc)
  * Consistency among classes
    * Example: Two different Job subclasses
      * They do retry logic kinda different, which one is best?
      * RETRY_TIME? RETRY_COUNT? Where do these values come from?
      * When code isn't consistent, developers have to reinvent the wheel
      * Include a mixin (RetryableJob) to ensure consistency
      * DRYs out the code and decrease test code
* Error rates multiply: 99% x 10 developers = 90%
* Stupidity multiplies: 99% x 10 developers = 90%
* Anything that can be checked by a machine, should be
* Catch the rest with pairing and/or code review
* Fail your build for basic style, complexity, lack of docs
* `gem install cane`
  * Fails if too complex, violates style requirements, undocumented code
  * Can't save bad macro design, but can deal with individual files
* No tool is perfect. Conform anyway. Swallow your ego.
#### Code in the large
  * > Dependency is one of the most critical problems in software development - Working with Legacy Code
* Define the relationship between our app and the rest of the world
  * Bad: Much of your code -> 3rd party code
  * Just put a layer between external party
  * Good: Much of your code -> Our Service Layer -> 3rd party code
  * Don't use the REDIS variable everywhere. Add a service layer
  * > "An aggregate is a cluster of associated objects that we treat as a unit for the purpose of data changes" - Domain Driven Design
  * > "The root is the only member of the aggregate that outside objects are allowed to talk to" - Domain Driven Design
  * Bi-directional associations are a symptom of ignoring aggregate roots
  * > "Treat ActiveRecord as a data structure and create separate objects that contain the business rules"
  * Rails defines Integration, Functional, Unit tests, but doesn't tell you how
  * Rails says a unit test tests models == LIES!
  * A test is not a unit test if it touches the db, communicates across a network, or touches the file system
  * Xavier's definitions (from Growing OO Software, Guided by Tests)
    * Acceptance: Does the whole system work?
    * Integration: Does our code work against code we can't change?
    * Unit: Do our objects do the right thing, and are they convenient ot work with?
  * Language shapes the way we think and code
* > Follow these principles and you'll find your code remains flexible, easy to change, and fun to work on, ten years from now - SOLID OO Design, Sandi Metz, Gogaruco 2009

## External Links

* [Some related website](http://www.example.com/)
