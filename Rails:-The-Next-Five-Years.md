**Presenter:** Yehuda Katz

## Bio

> Yehuda Katz is a member of the Ember.js, Ruby on Rails and jQuery Core Teams; he spends his daytime hours at the startup he founded, Tilde Inc.. Yehuda is the co-author of the best-selling jQuery in Action, Rails 3 in Action, and is a contributor to Ruby in Practice. He spends most of his time hacking on open source--his main projects, along with others, like Thor, Handlebars and Janus--or traveling the world doing evangelism work. He blogs at http://yehudakatz.com and can be found on Twitter as @wycats.

## Abstract

> When Ruby on Rails burst onto the scene in 2004, it excited web developers by showing that you could build next generation apps quickly and efficiently. Rails was one of the first frameworks to embrace Ajax, giving everyone the power to do partial page updates and whiz-bang effects in a conventional, effortless way.
>
> In 2007, the Rails team embraced RESTful conventions, making API development a no-brainer for new applications. Because RESTful JSON is so easy in Rails, Rails applications tend to implement APIs on balance.
>
> Then it was time to polish. Both the 2.0 and 3.0 releases cleaned up the code-base and found ways to take emerging conventions and make them easier to use.
>
> But now, like in 2004, another revolution is brewing. Increasingly, developers are moving their view layer from the server into the client, using RESTful JSON and client-side templating to increase responsiveness and bring applicable aspects of desktop applications to the web.
>
> Like last time, not every application needs to jump head-first into this new world. But just as in 2004, Rails has an opportunity to embrace the future, and bring its ruthless insistence on convention over configuration to bear on this problem.
>
> Rails already has the plumbing to be a fantastic conventional JSON server. The question is: will we take the challenge, or will we desperately cling to the past, hoping that the future will never come?

## Notes

### from @jamesgary

* The last five years
  * Rails is not obsolete because the ideas behind Rails are controversial and active
  * What's good about Rails?
    * "Convention over configuration"
    * Web development involves making a lot of trivial choices (like choosing which toothpaste to use)
      * Naming
      * Asset compilation
      * Testing
      * Routing http to controllers
      * File structure and architecture
    * More common conerns require fewer decisions
    * Lots of libraries for common problems
    * Rails takes on problems
  * CSRF Protection
    * Rails make it so easy
    * Sencha makes you do it all manually
    * django is semiautomatic (have to paste in snippet {% csrf_token %} in form
    * Rails is automatic (whenever you use a form helper, it inserts it transparently)
  * Obviously it's good to know CSRF, but you don't want to think about it EVERY time you make a form
  * The goal is to get zero cognitive overhead
* Common conventions build the foundation for other tools, extensions, abstractions, etc
  * Easier to talk about 'an asset pipeline' step
* When to do course correction?
  * When many people have the same problem
  * Many parts of the solution are trivialThere is a benefit in a shared solution
  * Learning about the problem is hard
* Failure to solve problems in rails core
  * Having multiple solutions robs the best tool its critical tool to succeed
  * Usage (not until we started deploying to Heroku did we discover bugs about asset pipeline)
  * Integration
  * Echo chamber (too many chefs in the kitchen)
* Do not take on any more technical debt
* Good architecture enables future features
  * Think more about features later & maintenance
  * The future is more important than now
* We bet on features. dhh betted on rest
  * Rails has a great http foundation
* Data transport is now biggest challenge
  * Before Rails, lots of db choices
  * dba would decide
  * Caused discrepancy between db and code
  * Rails enforced convention
* json api
  * dba control rage now mirroring to json control rage
  * Should responses include a root? embed associations? how to update in bulk? etc
  * Without a good standardized server code, can't have standardized client code
* Is Rails worth it now? Is it the right tool for the job?
  * Feels weird to hand roll client code, esp in Rails
* ActiveModel serializers
  * 2 different questions
    * What to Serialize (which attributes, which associations)
    * How to serialize (include a root? associations? extra data? avoid duplication!)
* Any convention is better than no convention
* Serializers avoid mixing common (representation) and uncommon (unique to your app)
* Still configurable
* Ember-Rails
  * Brings consistency to both server and client
* Bulk updates still needs work, but the goal is to establish a rule and stick to it
* Conventions for application structure
* In general, trivial choices are the enemy
  * If you're making a lot of trivial choices, there needs a course redirection
* Node
  * Standards and conventions beat same language everywhere
  * Use the best language for the server
* Recap
  * Rails' bet on REST gave it a leg up in many areas that are relevant to rich lcient apps
  * We can do better
  * Active::Model::Serializers is one approach to make APIs as transparent as ActiveRecord
  * We can make browser frameworks better through the same conventions

## External Links

* [Some related website](http://www.example.com/)
