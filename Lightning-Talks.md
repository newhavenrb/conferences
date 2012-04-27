**Presenter:** Dr Nic Williams

## Bio

> Dr Nic is a developer’s developer.
>
> He writes blog posts for developers; creates tools, libraries and text editor extensions for developers; and speaks to developers at conferences.
>
> He’s the VP of Developer Evangelism at Engine Yard, the premier platform as a service.
>
> He’s Australian and now living in the Bay Area.
>
> And he’s funny; if you can understand his accent.

## Abstract

> You know 'em, you love 'em -- five-minute talks by attendees on topics that they're passionate about. We'll have a signup sheet available from the start of the conference, so start thinking of ideas today!

## Notes

### From @james_gary

* Command+F1 to toggle mirror displays
* gist.github.com/22491946
* NSRails - Dan Hassin @2nf340
  * Senior in high school!
  * iOS developer
  * Need to bridge teh gap between Objective-C and Rails
    * RestKit (not as integrated w/ Rails as I wanted)
    * ObjectiveResource (intrusive)
  * High-level APIs that give your Objective-C classes
  * Super simple drop-in framework
  * http://github.com/dingbat/nsrails
  * http://nsrails.com
* Wind Tunnel - Javascript testing w/o the hassle
  * Simulated DOM using jsdom
  * Run each test modularly
  * Supports Coffeescript
  * Super duper fast (like .42s for a whole suite)
  * https://github.com/thatdutchguy/windtunnel
* config.threadsafe! JUST DO IT - Tony Arcieri @bascule
  * Most Rails apps can only do one thing at a time
  * Very few people use threadsafe
  * Super easy to enable
  * Most Rubyists see threads SUSPICIOUSLY (not curious)
  * Concurrency: You're probably already doing it
  * Your DB uses threads, your app should too
  * I/O automatically releases the GIL, so that's not an issue
  * Are my gems thread-safe?
    * http://www.RailsPlugins.org tracks thread safety
  * Earger Loading
    * `lib/` can be a pain since it doesn't load it first
    * Require your dependencies with `require_dependency`
  * Threads are more efficient
  * Why use N VMs when you can use 1 with threads?
* @tenderlove.dup
  * We want more Aarons (people who work for companies to do full time OSS)
  * Small shops can't afford to do what AT&T does
  * We can unite multiple small shops to support one OSS guy!
* Javascript: importScripts('blah.js') // neat!
* Amanda from NZ
  * New devs at company
  * Lotsa resources to learn Rails
  * But no list of comprehensive resources
  * Until NOW!
  * http://www.iwanttolearnruby.com
* what private teams can learn from open surce - @marksim
  * what/how/why to adopt
  * OSS provides a model for private dev
  * No other dev method reduces more bugs is... **code review**! (from code complete)
  * Process:
    * Fork on github
    * Submit pull request
    * Let the whole team review
    * Merge
  * Con
    * more complicated, slow
  * Pro
    * All code is reviewed
    * Everyone sees problem solutions
    * Gets input
    * Sees coding styles
  * Better talent pool
    * OSS is distributed from the start
    * What is your team simply acted distributed?
    * Campfire, skype, google hangout to see face
    * Mailing list or message board
    * Just make it open
    * Internal blogs
    * Con
      * more discipline
      * more intentionality
      * could reduce personal interaaction (but not what we found)
    * Pro
      * all com logged
      * everyone can review or catch up
      * anyone cab e added from anywhere
* sidekiq
``` ruby
# console
bundle exec sidekiq
ruby demo
# That's it!
# in Rails 3 app
require 'sidekid/capistrano'
```
* modeling on Rails using "erd" gem - @a_matsuda
  * ERD for eclipse & visual studio
  * Most everyone uses vim or emacs
  * Rails dev tools are optimized for CLI
  * Rails has generator and migration
  * Visualizing Rails DB
    * Most just use a whiteboard
    * pdf generation
      * rails-erd and railroad
      * Too static
  * erd (made during Railsconf)
    * bundle 'erd' gem
    * and go to localhost:3000/erd
    * Can dynamically edit DB schema (change table names, change column types, etc) and create migration files for you
    * easy!
    * https://github.com/amatsuda/erd
* Jonathan Wallace - row
  * Instead of trading time for money, trade results for money
* Interviewing sucks @micahjgates @canweriotnow
  * http://github.com/ruby-jokes/job_interview
  * FizzBuzz, Fibonacci, quine, primes
  * Use a library instead o reinventing the wheel
  * Generates BS answers for personality questions
* Greg Bell
  * ActiveAdmin
  * Don't use the merge pull request button on github
  * TravisCI rocks
  * Design has a front-end
  * Depend on less
  * Documentation
  * Build a community
  * Just do it!
* Integration engine testing - manning.com/katz
  * Strongly disagrees with earlier talk
  * Don't do this: Rails.application.routes.draw
  * Do this: Your::Engine.routes.draw
  * isolate_namespace so everything's properly namespaced so you can have routes in your engine
  * Now you can do your_engine.people_path or my_app.people_path
* Tokaido (formerly Rails.app) - Yehuda Katz
  * Precompiled Ruby
  * No hardcoded paths in the binary
  * Terminal based workflow
  * Precompiled binary gems
  * Code and app health (flog and flay)
  * Pow-like DNS hijaciking
  * Ruby Toolbox integration
  * rails://
  * Goals
    * Precompile everything (get others to precompile too)
    * Eliminate failure scenarios
    * Free Ruby devs from the tyranny of compilation failures
    * Avoid unrecoverable system-wide failures
    * Core usable on ther platforms (sm!)
    * Use this enviornemnt myself (not an easy-bake oven)
  * Ubuntu users use prebuilt binaries
  * Why not OSX users too?
  * This is for me and you, not just for noobs
  * But it will help noobs too
* Usergroups! @ryanbrunner
  * Get to know more people in your community
  * Recruitment is way easier (put yourself on the map)
  * It's way less nerve-wracking than talking at RailsConf :)
    * Talk with friends/colleagues first
  * Not everyone can make it to big conferences
    * Talk about what you learned at big confs
  * It's less hard than you think it is
  * Strong dev communities are great - and you can make this happen
  * Spread the Rails love
  * Talk/pub/hack nights
  * Hack and tell
  * Teaching ruby to kids/non-hackers/university students
* Railcar - Mike Scally
  * An isolated, compiler-optional Rails environment
  * http://railcar.info
  * Install binaries of essentials
  * Nice GUI
  * And can be CLI-driven
  * Moviation: Easy transition for noobs
  * Written in MacRuby
  * Next steps
    * http://www.bingems.org
    * http://github.com/arcturo/Railcar
* Why you don't get hired - @dacat Felix Dominguez
  * You are not a beautiful and unique snowflake
  * Spoke to a bunch of people
  * Everything you were told about resumes is wrong
  * Display your skills first
    * I used foo to solve bar
  * Limit or remove business type statements (unless your're applying for mgt)
  * Don't be arrogant!
  * Be humble
  * Don't use the front door, get in through the back door (contact recruiter for company)
  * Be honest
  * Know what you want
  * Talk to people all the time
  * Document what you do today
  * Big or small, publish something
  * Be passionate about something
  * Ask questions
* Rails Encryption using symmetric-encryption - @reidmorrison
  * What's sensitive?
    * Senitive data in db
    * Passwords in config files
  * `SymmetricEncryption.encrypt("asdf")`
  * `SymmetricEncryption.decrypt('qpowigjalsjgh')`
  * `attr_encrypted` (or `:encrypted => true` for mongo)
  * in config.yml
    * password: <%= Symmetiric Encryption.try_decrypt "fjoqiwjglaskdg" %>
  * PCI Compliance requirements
    * Remove encryption key from source code and development team access
  * Change encryption keys every 12 months
    * Re-encrypt existing data
      * Zero downtime
      * Decrypt, Encrypt with new key, destroy old key
* _sorry missed this 1-minute talk :(_
* Jay Moorthi - @tddium: Secure parallel Hosted Testing and Continuous Deployment
  * Change is coming
  * Manage risk
  * Be prudent
  * Aaaand all about fun
  * How do we connect these?
  * automated tests are an extension of your product
  * The customer is (future) you and everyone you interact with
  * Make your test suites as fast as you can
    * Instant feedback is important
    * Losing focus is a terrible waste of your time
  * Test every branch
    * Can't merge without a green build
* How I saved the world with ruby and nokogiri @rodpaddock
  * Backstory: Buddy was a blogger who got screwed over by huffpo
  * Rod was able to scrape a bunch of articles for a buddy in about 15 minutes
  * Ruby and nokogiri saved the day!
  * [Article](losttechies.com)
* @schneems at heroku
  * Step by step Wizards gem called: Wicked
  * `include wicked`
  * Add steps
  * `render_wizard`
  * https://github.com/schneems/wicked
* flash_s3_rails by Sam Woodard @samhwoodard
  * Direct upload to s3
  * Multi-file upload
  * Easy usage
  * Progress bar
  * http://github.com/shwoodard/flash_s3_rails
* Charles Lull @cowboyd - One man in the name of embedding js in ruby
  * therubyracer, therubyrhino
  * Can share code
  * Tap into exploding js ecosystem
  * Wants to be not 'one man', but 'many people'
  * In ten years, every serious language will ship with out of the box js interop
  * What should it look like to call js from ruby? and vice versa
  * What does a prototype chain look like in ruby?
  * javascript-and-friends@googlegroups.com - Join the discussion!
* Hacking the Airlines: Sit in F, Pay for Y @MatRogish
  * Not a talk about actual hacking
  * Use your miles to redeem
  * Pick an airline (one and only one)
  * Fly a lot. To random places. For a day.
  * flyertalk.com (this will probably explain better than my notes will) :)
* 10 reasons you should probably quit your job @bwilken
  * Whatever you wanna do, you should
  * Assumptions
    * You're good
  * You are underpaid
    * Money isn't everything, but it buys boats
  * Too much commute
    * Fuck that
  * Not enough vacation
  * The market is SICK
    * I could find a job in an hour
  * Too much overtime
    * You suck at programming after 8 hours of coding
  * You are better than everyone else
    * Quit and join a smarter team
  * Your code form last year sucks
    * Might as well change jobs and let someone else manage that pile of shit
* Monitoring with Graphite - @mattconway
  * Graphite does Scalable Realtime Graphing
  * Doesn't do the data collection
  * Stores time series data
  * URL API
    * Generates graph images or json
  * Web app
    * Visually build graphs
    * Store collections of graphs in dashboards
  * Better than munin for lotsa reasons
  * https://github.com/wr0ngway/rubber

### From @benjaminoakes

* @DrNic
    * Toggle mirror displays: cmd-f1
    * Share one idea

* [NSRails](http://nsrails.com): Objective-C + Rails; Communicating w/rails from iOS/Mac OS - [_Dan Hassin_](http://twitter.com/2nf340)
    * [On GitHub](https://github.com/dingbat/nsrails)
* Painless Javascript with wind tunnel - _Koting Hatduklgg_
* Threadsafe on! (`config.threadsafe!`) - [_Tony Arcieri_](http://twitter.com/bascule)
    * [Slides](http://speakerdeck.com/u/tarcieri/p/configthreadsafe-just-do-it)
    * [railsplugins.org](http://railsplugins.org) status of threadsafety
    * `require_dependency` is how you threadsafe-`require` `lib/` files
* `tenderlove.dup` - [_@jremsikjr_](http://twitter.com/jremsikjr)
    * Wants to get more RailsCore fulltimers by working together with other shops
* Json + Webworkers = win! - _John Krueger_
* [iwanttolearnruby.com](http://iwanttolearnruby.com) OSS - _Amanda Wagener_  [_@a_wagener_](http://twitter.com/a_wagener)
    * [Code on GitHub](https://github.com/awagener/iwanttolearnruby)
* Open Source Dev Model on Private Teams (via pull requests) - [_@marksim_](http://twitter.com/marksim)
   * make your private team a distributed set of code reviewers
* sidekiq (distributed message queue) - [_@jwo_](http://twitter.com/jwo)
    * TODO link to github
* Modeling on Rails - [_Akira Matsuda_](http://twitter.com/a_matsuda)
    * Modeling via web interface; can generate migrations
* What it means to be ROWE(awesome) - [_@jonathonwallace_](http://twitter.com/jonathonwallace)
    * Just get done with goals for a week, not 40 hrs.
* JOB INTERVIEW - THE GEMS - [M GATES](http://twitter.com/micahjgates) + [J LEWIS](http://twitter.com/canweriotnow)
    * [Slides](http://ruby-jokes.github.com/job_interview/pres.html)
    * `require 'job_interview`: `foo.fizz_buzz`
    * [`job_interview` gem](http://rubygems.org/gems/job_interview)
* 1 min, 1 year of hacking on open source - [_@gregbell_](http://twitter.com/gregbell)
* Integration testing engines - _Ryan Bigg_
    * Routes belong in the engine
    * Example: `visit spree.products_path`
* Tokaido - [_Yehuda Katz_](http://twitter.com/wycats)
    * Make dependencies easier.
    * Terminal-based workflow.  Doesn't try to be a GUI.
    * Ubuntu uses prebuilt binaries... why does OS X?  Are we Gentoo?
    * For everyone.  Not an Easy Bake Oven.
* Why you should participate in your local user group - [_@ryanbrunner_](http://twitter.com/ryanbrunner), [_@torontorb_](http://twitter.com/torontorb)
    * TODO twitter links
    * Interesting people
    * Recruiting developers easier
    * Less nerve-wracking than talking at RailsConf :)
    * Not everyone can make it to confs
    * Not as hard as you'd think
    * Strong communites == better
    * Spread Rails love
    * Emulate what you think is cool
* RailCar [_@skalnik_](http://twitter.com/skalnik)
    * [railcar.info](http://railcar.info)
* Why you don't get hired - @dacat
* Rails Encryption: Encrypting passwords and data in support of PCI compliance. - _Unknown_ FIXME Who was this?
* Distributed Continuous Integration with Tddium - _Jay Monthi_
* How I Saved The World with Nokogiri - _Rod Paddock_
* Wizards from WTF to wicked - @Schneems 
  * https://github.com/schneems/wicked
* Hacking the airlines
  1. pick an airline, and its partners
  2. fly a lot, to random places, for a day (mileage running) flyertalk.com
  3. take the long way ITA matrix airline search
  4. VDB/IDB (bump) earns you vouchers
  5. Credit cards with mileage signup bulks
  6. Earn 'em and burn 'em, these things depreciate like crazy

## External Links

* [Speakers](https://gist.github.com/2491946)