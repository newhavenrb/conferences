
* RubyConf 2012 will be in Denver, CO October 25th


**Presenter:** Rich Hickey

**Title:** Simplicity Matters

## Abstract

> Rich Hickey (@richhickey), the author of <a href="http://clojure.org/">Clojure</a> and designer of <a href="http://datomic.com/">Datomic</a>, is a software developer with over 20 years of experience in various domains. Rich has worked on scheduling systems, broadcast automation, audio analysis and fingerprinting, database design, yield management, exit poll systems, and machine listening, in a variety of languages.

## Memorable Quotes

* "Simplicity is prerequisite for reliability."  - Dijsktra
* "Programmers know the benefits of everything and the tradeoffs of nothing"
* "You're complecting things right now"
* "I have a hairball now that does it"

## Notes

### @danbernier's notes

Title: Simplicity Matters

"Simplicity is a prerequisite for reliability." - Dijkstra

simple: sim-plex, one fold or braid (antonym: com-plex, many)
easy: nearby, adjacent

simple != easy

Simple: one role, task, concept, dimension...
But not one instance, or operation.
It's about a lack of interleaving, not cardinality.

Simplicity is objective.

Easy: on our hard drive, in our tool set/IDE, apt get, gem install...
Familiar: close to our understanding.

Or, near our capabilities.  We don't like to admit things are complex,
but there are limits to the complexity we can handle.

Easy is relative: it's based on where you are now, what you know now.


We humans have limits:
* we need to understand, to make reliable
* we can only consider a few things at a time
* intertwined things must be considered together
* complexity undermines understanding


"Change really is the operative word."

"The software we've already written is gonna dominate our work."  We
need to make it do more, do it differently, do it better. That
requires analysis, & decisions. You need to Reason about your program
- more than tests, types, tools, process...if you want your software
to change, then you need to understand it.

Simplicity = Opportunity. The most effective agility is architectural.

Design is about pulling things apart. "We think of Design as making
grand plans for how everything is gonna go. But most of what a
designer does is to take things apart."

THEN: repurpose, substitute, move, combine, extend: they're separated,
so they're easier to understand. "Simplicity buys us easiness, ease,
agility."


"Lisp programmers know the value of everything and the cost of
nothing." -Perlis

That becomes: Programmers know the benefits of everything and the
tradeoffs of nothing. "We really focus on ourselves, but we should
focus on our software. What if the Foo Fighters became the Kazoo
Fighters?"

#### Programmer convenience =~ Programmer replaceability

Instead, focus on the programs: quality, correctness; maintenance,
change. What's good for the program? @gem install hairball@ is easy,
but is it good for the program?

A hairball: intertwined strands.
Complect: to interleave, entwine, braid.
Complecting causes complexity

Make things easy! Install things, get them approved for use.  Learn
things, read books. "If you want everything to be familiar, you'll
never learn anything new." But you can't make your brain any better at
dealing with its limits, so: limit its complexity. Simplify it.


Complexity:                      Simplicity:
state, objects                   values
methods                          functions, namespaces
variables                        managed references
inheritance, switch, matching    polymorphism a la carte
syntax	                         data
imperative loops, fold           set functions
actors                           queues
ORM                              declarative data manipulation
conditionals                     rules
inconsistency                    consistency



Agile: "Simplicity - the art of maximizing the amount of work NOT done - is essential."
This is wrong, this is about ease, this is focused on you. "Absolutely
terrible advice."

The team w/ real simplicity will be being effective when you're
dealing w/ the elephant in the room, your old code.

Simplicity is not an objective (TODO damn, missed the quote...something
about pulling thigs apart into their natural order?)



#### Lists and Order

Why should we care about order? Because it complects each item with
the next one. Sure, you don't use position in lists, but you DO use
positional arguments to functions. It happens, it's there. (Even
clojure has it.) Syntax is order. Imperative programs are order. Call
chains!


Complex                    Simple
positional args            named args or map
syntax                     data
product types              associative records
imperative programs        declarative programs
prolog                     datalog
call chains                queues
xml                        json, clojure literals


How can we avoid order? Use maps! (Hashes!)
Generic access, over the keys.


#### Information IS Simple - don't ruin it!

90% of the time, classes are a waste, & you'd be better off w/ a map
(hash):
* thwarts generic data composition
* ties you to an implementation

But what about encapsulation?
That's for implementation details - info doesn't have implementation.
It WILL have representation - you have to pick one.


Say you create an interface, or a class. Can you move it? Can you move
your subsystems? Move it out-of-proc, to a different language, or
thread?

A subsystem should take & receive data - all our services do that
(JSON, restful, etc) - so why do we stop doing that inside our
programs? We return types, not data. Just use hashes.


#### Simplicity is a Choice

Requires effort, but will make the rest of the work easier

Develop sensibilities around entaglement. Ask yourself: did we
complect anything today?

Choose simple constructs.


Simplicity matters: complexity inhibits understanding, and therefore
robustness.

Simplicity enables change - the primary source of true agility. It's
opportunity.

"Go make simple things."



### From @benjaminoakes

* Conflated words:
    * Sim=plex: "one fold/braid"
    * Easy: "lie near"
* Easy
    * Near, at hand (part of your toolkit, etc)
    * Close to your understanding/familiar
    * Near our capabilities; about our mental work
    * How much complexity can we take on?
    * What's easy to **you** might not be easy for someone else
* Limits
    * 7 +/- 2 (from psychology)
    * Intertwined things (coupled?) make change more difficult
* Change
    * ...is the operative word
    * Size/complexity of software **is** the limit
    * Being able to reason, etc. is critical
* Simplicity
    * Process isn't important; architectural agility is
    * Is design demonized?
        * "Grand plans" isn't design
        * Taking things apart is the goal
        * Goal: simple compontents
* The "Kazoo" Fighers
    * Do you want to be in a band that consistently chooses the easiest thing?
* Homogenaeity
    * You're more replacable if there's homogenaeity
    * Too much focus on ourselves rather than our programs
* "Complect"
    * Taking more than one thing and tying it together in a knot
* Easy isn't bad
    * You can become familiar
    * Learning new things is good
    * Getting smarter is hard
    * Easy is best in all three senses
* Simpler components
    * Simpler languages, techniques, approaches
    * Same programs!
    * What are some options? (see slides if posted; there's a table)
    * Simplicity is hard work, but there's a huge payoff.
    * Constatin Brancusi quote
* Order is complex
    * "The order problem"
    * Makes every use more complex
    * Positional arguments vs named arguments (or a hashmap)
    * This is "syntax vs data"!
    * See table
    * Leverage hashes in your language; use them often
* Information is simple
    * Classes can make things more complex
    * Makes generic manipulation harder
    * Information **doesn't have** implementation
    * Information **has** representation
* A test: can you move it?
    * Morphing from components to systems of systems...
    * Subsytems must have:
        * Well-defined boundaris
        * Abstract verbs
        * Take and return **data**
* Simplicity requires vigilance
    * Be aware of entanglement and how to be sensitive about it
    * Tools don't do this (e.g., tests)

## External Links

* [Clojure](http://clojure.org/)
