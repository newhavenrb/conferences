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

TODO

### From @jamesgary

TODO

## Discussion

* He's talking about fear of features/change like DHH was... Maybe they discussed this at length?  What's the impetus of this?  (Have a link?) @benjaminoakes

## External Links

* [Some related website](http://www.example.com/)
