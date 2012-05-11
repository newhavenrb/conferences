**Presenter:** Aaron Patterson

## Abstract

> When he isn't ruining people's lives by writing software like phuby, enterprise, and neversaydie, Aaron can be found writing slightly more useful software like nokogiri. To keep up his Gameboy Lifestyle, Aaron spends his weekdays writing high quality software for ATTi. Be sure to catch him on Karaoke night, where you can watch him sing his favorite smooth rock hits of the 70's and early 80's.

## Notes

### From @benjaminoakes

* He does OSS at ATT Interactive
* Works at home; his annual review is online
    * Goes through VPN
    * Browser isn't supported
    * Uses IE on a VM; still not supported
    * Needs to be IE7
    * Uses a Mac server
    * SSH tunnel to his laptop for VPN
    * "Rube Goldberg Network Architecture"
* Aaron Patterson's title is now "Corey Haines" :)

This talk is about failure

* Tokaido ("Lampshade" -- I think)
    * From Yehuda Katz (@wycats)
    * Binary distro of Ruby + gems for Rails
    * Good for students; don't have to worry about dependencies
    * Good for teachers too; he used to teach Ruby at U. Washington
    * Good for all developers
        * Time is important
        * Shared objects, `dlopen`, `otool`, etc... what are these things?
        * If you're building and you have a problem with one of these, you need to know how they work
        * Do you want to spend time on this?
        * Needs good ecosystem
    * Alternative: "RailsBridge" project

* Failure to evolve
    * Concurrency is important
    * Not enough
    * Why do we have **ActionMailer**?  Sending emails, obviously...
    * Done synchronously (blocking; bad if slow)
    * Could get exception
    * Best case: slow, worst case: errors
    * Need to do in a backround job, etc (producer/consumer pattern)
    * Why do we have ActionMailer without a **Queue**?
        * We do... but no one uses it (**ActiveQueue**)
        * `queue << Runnable.new`
    * `ActiveQueue` doesn't actually have an implementation ("0 lines")
    * Lots of other options, but different interfaces
        * Interface is more important than implementation (e.g., Redis, AMQP, etc)
        * We don't have a driving force for this common API
        * Make it easy to switch
        * "I'd like to see Rails 4 be the driving force"

* Failure to lead (fear of features)
    * Less tolerance for techical debt
    * `tolerance = value / time`
    * Younger: bad at predicting maintenance time; more tolerance
    * New developers more likely to merge without thinking about maintenance cost
    * Cosmetic
        * Tagged logging
        * Output: `[foo] [bar] omg!`
        * Not thread safe, incompatibility
    * 2nd one (I missed; had to shift focus :( )
    * Course correcting
        * "Asset pipeline" idea worked differently for every project in < 3.1
        * Not perfect
        * We're doing more client side computation now (rather than server side).  JavaScript, etc.
        * Asset Pipeline too big to fail
        * No "technical debt" bailout
        * We need to be prepared for this

### From @danbernier

@tenderlove settles his stage nerves with inspiration from Freddie
Mercury.

He works for AT&T remotely. When he does his annual review, since he
works from home, he VPNs in: where he's told that Chrome, Safari, and
IE9 are all unsupported - he needs IE7.

#### Failure

Our own, and @tenderlove's. Talk title: "I've made a huge mistake."

##### Tokaido project

A binary of ruby for OSX, ready for rails. This is promising
especially for students & teachers. (You always spend the first lesson
just installing.)

But for all developers: how important is your time? Installing ruby &
all your gems from source is really complicated & arcane.  Yehuda is
gonna have to work with C-extension writers, and work on their tool
chain.

##### Concurrency

Why do we have ActionMailer?  It always slows down a request, when you
have to send an email. So let's do it out-of-band, asynchronously. So,
why do we have ActionMailer, but no Queue? We do: ActiveQueue, but it
has no docs or examples, and lots of configuration; it actually has 0
lines of code.

Lots of queueing choices: Resque, AMQP, QueueClassic, delayed job,
sidekiq...but they all have different interfaces. Why don't they all
have a consistent API? The interface is more important than the
implementation: queues should have push, consumers should have run, so
we can swap easily. Rails 4 can be the driving force for this: provide
a sample implementation to match.

##### Failure to Lead

Features, and a Fear of Features

It _seems_ like older devs are afraid of features, but really, they're
more afraid of technical debt - they have a lower tolerance for it. As
you age, your tolerance for it dwindles.

The value of a feature is its current value + its potential value.

The cost of a feature is its dev time + its maintenance cost

Tolerance = value / time

Younger devs don't predict the time, & the value, less accurately.  If
you don't pay the maintenance cost, you have a higher tolerance for
it.  Young devs are more likely to merge requests in.

So let's categorize rails features:
* cosmetics: dubious value, unknown debt
* refacturings: high value, low (maybe negative) debt
* course-corrections: high value, unknown debt

A cosmetic feature: tagged logging, which wasn't thread safe, & was
incompatible. Dubious value, unknown debt. Why do we need this?

A refactoring feature: notifications. Gave us less code, more
information, smaller stack sizes.

A course correcting feature: asset pipeline. It got us closer to
on-course, but not quite there. We've gone from centralized
mainframe/terminal, to distributed PC, to centralized browser/server,
and now back to distributed JS rich clients. Asset Pipeline is too big
to fail, because that's the direction we need to go, but we have to
pay down this technical debt.  The computation location is changing,
moving to the browser.


### From @jamesgary

* Failure to Remember
  * Toukaidou
    * Binary distribution of Ruby w/ gems to run rails, executable
    * Easy, quick installation for students, teachers
    * As developers, how important is your time?
    * Things can go wrong, and you'll have to spend time researching how to fix it
    * Ecosystem
      * Yehuda has a lot of work to make things work (like C extensions)
      * Volunteer for RailsBridge
* Failure to Evolve
  * Concurrency - Aaron hasn't been treating it as important as he should
  * Sending email should use Producer/Consumer pattern
  * We have ActionMailer, but no Queue
  * We do have ActionQueue, but no one uses it because it has no docs, examples, and needs lots of config
  * Lots of queuing tools, but all have different interfaces
  * Interface is most important, implementation is secondary
  * We need to demand a consistent API, but who is the driving force?
* Failure to Lead
  * Features
    * Fear of features
    * Older developers might have a lower tolerance for technical debt
    * Newer developers have higher tolerance for tech debt
    * Value = Current + Potential
    * Cost = Dev Time + Maintenance
    * Tolerance = Value / Time
    * If you don't pay maintenance time, your tolerance is higher
    * New devs are more likely to click the merge button
    * Types of features
      * Cosmetic: Dubious value and unknown debt (tagged logging, since it was not thread safe and inconpatible)
      * Refactoring: High value and low (sometimes negative) debt
      * Course Correcting: High value and unknown debt: Asset Pipeline
    * Asset Pipeline is 'too big to fail', but we have no bail out
    * We need to be prepared

## Discussion

* He's talking about fear of features/change like DHH was... Maybe they discussed this at length?  What's the impetus of this?  (Have a link?) @benjaminoakes

## External Links

* [Tokaido railsapp kickstarter project](http://www.kickstarter.com/projects/1397300529/railsapp/posts)

## Other Languages

* [[日本語|Aaron Patterson Keynote JA]]