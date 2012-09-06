From [[WindyCityRails 2012]]

**Presenter:** [[Evan Light]]

## Abstract

> Everyone draws inspiration and motivation from different sources.
> 
> For most, it’s often frustration.
> 
> We make life decisions, define new features, or refactor code when we get too annoyed by current circumstances. This is where Evan admits that he has a low tolerance for frustration. Having been frustrated a great deal during his career, Evan will discuss several anti-patterns that he has seen in code and how to use the Dark Side of the Force (frustration, anger, and rage) to escape from them.

## Summary

* Evan cleans up a lot of code
* Things you should know how to do:
    * Refactor:  extract methods, etc
    * Delegate more (instead of splitting out modules just to `include` them again)
    * Views that aren't stupid
    * Monkey patching:  bad!

## Memorable Quotes

* TATFT: Test All The Fucking Time
* Demeter: "Don't play with your friend's privates"

## Notes

From @benjaminoakes:

* What he does:
    * Job: "Freelance Code Janitor"
    * Ruby DCamp
    * Ruby Freelancers
    * Previously: gov't contractor, startups, etc
    * Lately: freelancing
    * Has seen a lot of shit

* We love TDD
    * Most Rubyists don't write tests (at all?)
    * TATFT: Test All The Fucking Time
    * Red Green Refactor... Most Rubyists don't refactor

* Problems he sees often:
    * Refactoring:  Extract Method (and extract classes in the process)
        * "Separate nouns and verbs"
    * The all knowing `User` class
        * More modules?  That makes it worse!
        * "Get a lackey"  **Delegate!**  `SimpleDelegator`
    * Views that aren't stupid
        * Remove the logic
        * Could use `Helper`s
        * Don't just throw everything there...
        * Presenters probably should not be your first shoice (not terribly different than helpers for a single method example)...
        * Use Helpers first, then Presenters as it gets complex
        * His gem: `modest_presenter`
    * Monkey patching: bad!
        * Don't mokney patch Resque, etc.
        * Dependency injection can be a better choice sometimes...
        * Do the right thing (fork, pull request, etc.)
    * Demeter
       * "Don't play with your friend's privates"

## Discussion

* TATFT... Aren't there times that it doesn't make sense to test?  (Isn't that one of the things Kent Beck says?)  - _@benjaminoakes_
* Other benefit for Presenters:  faster, Corey Haines-style tests - _@benjaminoakes_

<blockquote class="twitter-tweet"><p>"test, refactor, delegate" - @<a href="https://twitter.com/elight">elight</a> <a href="https://twitter.com/search/%23windycityrails">#windycityrails</a> <a href="https://twitter.com/search/%23frustrationdrivendevelopment">#frustrationdrivendevelopment</a></p>&mdash; Table XI (@tablexi) <a href="https://twitter.com/tablexi/status/243730388650979328" data-datetime="2012-09-06T15:20:27+00:00">September 6, 2012</a></blockquote>
