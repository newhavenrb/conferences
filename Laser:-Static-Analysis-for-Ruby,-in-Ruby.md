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
