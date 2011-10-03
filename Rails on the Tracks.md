On the Tracks
=============

Experience
----------

* 40 apps in the last 12 months
* Wrote ActionMailer
* Antipatterns

Philosophy
----------

* Working vs Sexy
  * Not just a green light
  * Sexy can be a time waster
  * If it's not necessary, don't worry about it
* Maintainable
  * Patterns are good, but don't always try to be a case study
  * Trivial to understand == good code
  * Budget matters: beautiful is ugly if it's too expensive/no one buys it
* Trade-offs are life
  * Don't go overboard on refactoring if rarely used
* Not selling code, buying a solution (app)

* DOCUMENT how to deploy (e.g. in README) TODO
  * Heroku, Chef, Puppet, etc
  * Bundler
    * Be explicit in versioning
    * Don't depend on git repositories you don't control
      * Fork if you have to, making a branch for your app
  * Make db/seeds.rb for what you nee
    * Makes it easier to add a new developer (including you sometime down the road)
  * No passwords in the app
    * API keys included
    * Hard to add a consultant, or if a dev leaves
    * TODO 'app' gem
    * TODO list what you need in terms of servers, access, etc.
* Big Session == Slow Site
  * Pushing to the browser isn't a bad idea; scalability!
  * Turn off sessions for parts of your app where one isn't necessary
* Opinions
  * Work with the opinions, not against them
  * Ruby has opinions too.  Don't be too verbose and work with Ruby.
* Being smart can be stupid
  * Filters are for state modification
    * They inherit!  You'll run into problems
    * Alternative to before in Rspec: make a method that's explicit
  * Don't overdo metaprogramming
  * Takeaway:  Writing Ruby and it's pissing you off?  You're doing it wrong!
  * You don't need database agnostic code
    * Rare
  * SQL has its place (45 minutes vs 15 seconds)
  * "Control flow is code smell"
    * Extract methods if you have way to many cases/ifs outside the object

* TODO get an inspection
* Code review is important

* Shared security
  * Keep your YAML in the shared dir
  * Or env vars for Heroku

  * slides: http://speakerrate.com/talks/7575
