From [[WindyCityRails 2012]]

## Notes

### PowerEnum 

by [[Arthur Shagall]]

* At same company as [[Mike Sandler]] (TMXCredit)
* ActiveRecord with slug lookup, basically
* `Something[:foo]` gives you an `ActiveRecord` instance

#### External Links

* Gem: [`power_enum`](http://rubygems.org/gems/power_enum)

### Build your next app using Meteor

by [[Yuriy Dybskiy]]

* Live coding, created a simple demo app in under 1 minute

#### External Links

* [Meteor official site](http://www.meteor.com/)
* [Demo App](http://wcr.meteor.com/)
* [Slides](https://speakerdeck.com/u/dybskiy/p/windycityrails-dot-org-meteor-lightning-talk)
* [Security in Meteor](http://britto.co/blog/security_with_meteor)

### PgPower: Rails Postrges for Power Users

by [[Mike Sandler]]

* At same company as [[Arthur Shagall]] (TMXCredit)
* Schema dumping becomes hard when doing migrations with raw SQL
* PgPower helps out; augments the migrations DSL

#### External Links

* Gem: [`pg_power`](http://rubygems.org/gems/pg_power)

### Under the C: Ruby C Extensions

by [[Mike Laurence]]

Why?

* Low level C libs
* Faster

Why not?

* Documentation kinda sucks
* Intimidating
* etc

How much work for a C extension?

* `extconf.rb`, `mkmf` (happens as a part of the gem install)
* Ruby-to-C interface (Ruby provides a lib)
* Do some type conversion, etc

#### External Links

[Slides](http://under-the-c.deepworldgame.com/)

### Coding Without Electricity

by [[Kyle Crum]]

* In Burma
* Very little technology penetration
* "Lemons and all that"
* "Libraries and books... weird"

Tips for life:

1. Do something scary hard
2. Fix the problem -- do what you need to and move on
3. Look up (from your computer)

---

### Work Clean: Code Like a Chef

by [[Greg Baugues]]

* Trained chef by a friend he met in a apt complex
* Clean your space after you're done
* Writing down your list is the best way to get organized
* Done with his task:  ctrl-w all the way down and then start on the next task
* Simple tools are better.  1 great knife.
* Execute well on simple ingredients => great result

### Rules of 3

by [[David Demaree]]

* Refactoring vs prefactoring
* They're doing an i18n project
* Not sure how to approach well
* DRY vs too much abstraction -- DRY is just a guideline!  (Repeating can be okay)
* Don't design for what you think you're going to need (YAGNI)
* The Rule of 3:  3 repetitions => maybe refactor
* Organizing code can be a blessingGi
* Don't make assumptions

### Lean Development

(his slides didn't work -- missed name, etc)

* vs Agile
* Lazy
* Lean is a part of little-a agile: courage, people, customers... but kanban
* Lean -- work efficiently
* Lean is "pull"; waterfall, scrumm is "push"
* seattle.newcoffee.org (sp?)

### It's About Time

by [[Benjamin Fleischer]]

* UTC
* Date formats...
* `require 'time'` and you get more methods
* RFCs
* @avdi says use `iso8601`: human readable, machine sortable
* Gotchas:  DST, localized times, leap seconds, different parsing in Ruby 1.8 / 1.9 (maybe `strptime`)
* Don't scheudle cronjobs between 1 and 3 am -- time may not exist

http://gist.github.com/3668333

### Scalable Configuration

by [[Tim Galeckas]]

* They've had probs with configuration (staging vs prod, etc)
* He made a gem called `hierarchical_config` https://github.com/timgaleckas/hierarchical_config
* Scalable is:
    * In source control...
    * Should be seen outside of where it's used
    * Not changeable while running
    * Declarative (they use YAML)
    * Can be overridden (for passwords, etc)

### What I learned in real-life software development

by [[Marshall Shen]]

* Went to University of Iowa :)
* Not like a class...
* Professor: assignment -> code -> defined solution
* Now: more time doing customer stuff, figuring out what you need to do.  Takes discipline.
* Keep getting better...
