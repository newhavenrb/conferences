**Presenter:** Aaron Patterson

## Abstract

> When he isn't ruining people's lives by writing software like phuby, enterprise, and neversaydie, Aaron can be found writing slightly more useful software like nokogiri. To keep up his Gameboy Lifestyle, Aaron spends his weekdays writing high quality software for ATTi. Be sure to catch him on Karaoke night, where you can watch him sing his favorite smooth rock hits of the 70's and early 80's.

## Notes

### From @benjaminoakes

TODO

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


## External Links

* [Some related website](http://www.example.com/)
