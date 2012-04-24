**Presenter:** Rich Hickey

## Abstract

> Rich Hickey, the author of <a href="http://clojure.org/">Clojure</a> and designer of <a href="http://datomic.com/">Datomic</a>, is a software developer with over 20 years of experience in various domains. Rich has worked on scheduling systems, broadcast automation, audio analysis and fingerprinting, database design, yield management, exit poll systems, and machine listening, in a variety of languages.

## Notes

* Simplicity
  * > Simplicity is prerequisite for reliability - Dijkstra
  * Simple = one fold/braid (sim -plex)
  * Easy = lie near (easy < aise < adjacens)
  * One fold/braid
    * One role, task, concept, dimension
  * But not one instance, or one operation
  * About lack of interleaving, not cardinality
  * Simple is *objective*

* Easy
  * Near, at hand,
    * on our hd, in our tool set, ide, apt get, gem install...
    * Near to our understanding/skill set (familiar)
    * Near our capabilities
  * Easy is *relative*
* Limits
  * We can only hope to make reliable those things we can understand
  * We can only consider a few things (+- 7) at a time
  * Intertwined things must be considered together
  * Complexity undermines understanding
* Change
  * Elephant in the room during standup: The software we've already written
  * We make the elephant do more, do it differently, do it better
  * Changes to software require analysis and decisinos
  * Your ability to reason about your program is critical
    * More than tests, types, tools, process
  * That elephant will dominate what you do
* Simplicity = Opportunity
  * Architectural Agility wins (beats all other kinds of agility)
    * else - push the elephant
  * Good design is about pulling things apart
  * Repurpose, substitute, move, combine, extend
* LISP programmers know the benefits of everything and the cost of nothing
* Programmers know the benefits of everything and the tradeoffs of nothing
* Imagine if the Foo Fighters just wanted easy, didn't want to learn instruments
  * Became the Kazoo Fighters, which would be lousy and no one would want to be in a band that consistently chooses the easy thing
* Programmers vs Programs
  * We focus on ourselves
    * programmer convenience
    * programmer replaceability
  * Rather than the programs
    * Software quality, correctness
    * Maintenance, change
  * gem install hairball # incredibly easy, good for the moment
* Complect
  * "To interleave, entwine, braid"
  * Bad!
  * Complecting things is the source of complexity
* Making Things Easy
  * Bring to hand by installing
    * getting approved for use
  * Become familiar by learning, trying
  * If you want everything familiar, you'll never learn anything
  * But mental capability? Can you get smarter?
    * Not going to move very far
  * Make challenges easy by _simplifying_ them
* We can be creating the exact same programs out of significantly simpler components
* What's in your Toolkit?
  * Complexity / Simplictity
  * State, Objects / Values
  * Methods / Functions, Namespaces
  * variables / managed refs
  * Inheritance, switch, matching / polymorhpism a la carte
  * syntax / data
  * imperitave loops, fold (:each gets Rubyists out of loop) / set functions
  * actors / queues
  * ORM / Declarative data manipulation
  * Conditionals / Rules
  * Inconsistency / consistency
* "Simplicity -- the art of maximing the amount of work not done -- is essential" = WRONG
  * Simplicity is not about you
* Simplicity is not an objective in art, but one achieves simplicity despite one's self by entering into ...... bluh
* Lists and Order (are they so complex?)
  * A sequence of things
  * Does order matter?
  * A set calls out that order doesn't matter (and no dupes)
  * Why care about order?
    * Complects each thing with the next
    * Infect usage points
    * Inhibits change
* Order in the Wild
  * Complex / Simple
  * Positional args / Named args or map
  * Syntax / Data
  * Product types / associateive records
  * Imperitave programs / declarative programs
  * Prolog / datalog
  * call chains / queues
  * xml / json, clojure literals
* Use Maps (aka hashes)
  * first class associative data structures
  * idomatic support
  * Generic manipulation
  * Use 'em

* Information _is_ simple
  * Don't ruin it
  * By hiding it behind a micro-language
    * i.e. a class with info-specific methods
    * thwarts generic data composition
    * ties logic to representaiton du jour
  * Represent data as data
* Encapsulation
  * Is for implemntation details
  * Info doesn't have implementaion
    * Unless you added it - why?
  * Information will have representation
    * have to pick one
* Wrapping Info
  * The information class, then a service, etc
* Can you move it?
  * Litmus test - can you move your subsystem?

* subsystems must have
  * well defined boundaries
  * Abstracted operation interface (verbs)
  * General error handling
  * take and return data
    * Not IPersonInfo - ooops!
  * Again, maps (hashes)

* Simplicity will always be a Choice
  * Requires vigilance, sensibilities and care
  * Equating simplicity with ease and familiarity is wrong
    * Develop sensibilities around entanglement
    * Take a moment ot have that conversation
  * Your 'reliability' tools (testing, etc) don't care if program is simple or not
  * Chose simple construct

* Simplicity Matters
  * Complexity inhibits understanding
    * and therefore robustness
  * Simplicity enablse change
    * It is the primary source of true agaility
  * Simplicity = Opportunity
  * Do!
  * Don't drag an elephant around
  * Go make simple things


## External Links

* [Some related website](http://www.example.com/)
