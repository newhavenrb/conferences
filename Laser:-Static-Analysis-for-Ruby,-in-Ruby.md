Synopsis
--------

> What truly makes Ruby special as a language is its focus on expressivity, flexibility, and dynamism. Yet these same properties - and their widespread use in the community - make even straightforward application code difficult to analyze statically in a meaningful way.
>
> Laser seeks to change that. As a general-purpose analyzer using traditional compiler techniques, it statically discovers properties of real-world Ruby programs that no existing tool can. This talk is a whirlwind tour of what Laser can do, how it does it, and what it means for a typical Ruby programmer (who doesn't want to litter his or her code with type annotations). Among the questions it attempts to answer:
>
> * What code never runs?
> * What variables are unused?
> * What code runs, but has no meaningful effect?
> * What exceptions might a method raise?
> * Are blocks required, optional, or ignored by a method?
> * What variables are constant?
> * What methods get generated (or removed) by loops at load-time?
> * What types are being used, and where?
> * What gets added to a class by calling a method like acts_as_list?
>
> Most importantly, Laser uses this information to find bugs and tell you about them, in addition to warning you about potential mistakes. It has a clear integration path with YARD and Redcar, as well as a possible future in optimization. On a broader scale, Laser exposes and builds upon the underlying strength and regularity of Ruby and modern Ruby techniques, without restricting Ruby's natural expressivity through static typing.

Laser
-----

* Runs Ruby code with `Laser#Magic`; not strictly static analysis
* Ruby Object Model reimplemented in Laser
* `LaserMethod` -- one instance per method in analyzed program
* Cartesian Product Algorithm (by Agesen -- created for Smalltalk/Self)
  * Reasoning about types
  * Duplicating Cartesian graph on types
  * LaserMethod#return_type_for_types
* Expected return types (warnings based on `#to_s`, `#to_a`, `!`, etc)
* Unused methods based on the `been_used` flag.  Again, it's running your code to figure this out.
* Unused vars (in parser!).  Can't tell dead code.  :(
* Other algo... missed its name.  It's O(V) in running time.
* Block usage.  Seems crazy.  Too much to write down.
  * Sends in a canary, tests to see if it's called like a block would be with `yield`, `block_given?`, `iterator?`, etc.
  * Checks recursively
* Simulation
  * Interpreting Ruby in Ruby
  * Way slow.
* CFG isn't conservative enough.  Known to be wrong.

He's doing Java and Python at Google now.  Not sure if Laser is going to do a ton more.
