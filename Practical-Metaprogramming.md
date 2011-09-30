Synopsis
--------

> I have completed a second major release of a library that fully conjugates Classical Latin verbs in each of their 133 froms * 5 standard paradigms.
>
> Owing to the irregularity of human communication, modeling the provision of unambiguous answers (return values) to ambiguously asked things (flexible / incomplete method calls) might have required hundreds, if not thousands, of method definitions or static values entered in a database.
>
> But what if heuristics could be given to a Ruby class such that it "thought" as language learners are taught to think? What if it could be taught to be flexible in respecting the ambiguous calls given and to still give precise, correct answers back - as human language learners are capable of doing? By adopting this design paradigm code could become leaner and more reflective of human cognitive process.
>
> Thankfully for Rubyists, this is not a dream, this is reality. Our programs can operate more intelligently, more heuristically, and more insightfully. We can save ourselves days of development time by integrating the next tier of metaprogramming patterns I seek to demonstrate. This is perhaps what makes Ruby so unique, so mysterious, so enticing and so special.

Intro
-----

* Metaprogramming is "just programming"
* Virtually all core libraries make use of metaprogramming

Goals:

* Bold metaprogramming
* Learn ancestor chain (for lookups)
* Real-world example

Definition
----------

**Writing code that redirects passed messages at runtime**

or

**that provides or alters the structures that do said passing**

Message passing depends on your ancestor chain (e.g. `foo.ancestors`), as deterimined by classes, modules, and inheritance.

But really, most people say metaprogramming meaning as style.  You're metaprogramming all the time.

Terminology
-----------

**Tier 1:** advanced method redirection

* Open class
  * Kernel method
  * Monkeypatching
  * Singleton method
  * `attr_*`
  * `alias`ing

Overused?  They're power tools; you need to learn how to use them.  (The "table saw" rule.)

**Tier 2:** inception and interpretation *as handled by you*

* `Object#send`
* `method_missing`
* ...

**Tier 3:** Dynamic Generation and inclusion of modules

With great power comes great responsibility.

* Dynamically generate namepaces
* `class_eval`
* `instance_eval`
* ...

Latin example

Takeaways
---------

* Learn ancestor chain
