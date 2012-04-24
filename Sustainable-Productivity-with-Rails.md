**Presenter:** Xavier Shay

## Bio

> Xavier Shay recently emigrated from Australia to San Francisco to work on the engineering team at Square. Prior, he worked on large Ruby on Rails projects at The Conversation, NZX, Redbubble, and mentored many more. In 2010 he presented a world tour of a training course titled "Your Database Is Your Friend". He has been working with Ruby on Rails for half a decade, and has published and contributed to over 80 open source projects according to GitHub.

## Abstract

> Ruby on Rails claims to be "optimized for programmer happiness and sustainable productivity." I strongly disagree with the latter assertion. In this talk I will channel my half decade of industry Rails experience into expounding this position and providing constructive feedback as to what needs to change---in both the framework and the community---before we can support this claim. I'll also cover practical techniques you can use to be sustainably productive on your own projects in the meantime.

## Notes

### From @james\_gary

### @ZachMorek

* How do we keep being productive, after the project begins aging
* Rails is not optimized for sustainable productivity
* Prototype - first few iterations, rails is perfect for this
* Your application - many many iterations
* Easy 
* Simple
* Rails is easy, not simple. Complexity of interleaving parts

### Data

* Data that lacks integrity are harder to understand
* `validates_uniqueness_of`
* Rails provides no solid way of uniqueness exceptions
* `has_one`
* Exceptions in this race condition
* Stranded records on create/delete at the same time
* High risk of data corruption
* Rails does not suport database constraints

### Code in the small

* Reification, make something abstrat0 more onccrete or real
* How classes fit in should be documented, that code can't speak for itself
* Answer important questions, should it be restarted, does it have any downstream impacts, is that important
* Consistency is a form of documentation. Multiple implementations of the same thing mean developers start asking quesitons instead of doing something more useful
* Stupidity multiplies (99% effective developers, 10 developers...)
* github/square/cane forces you to look at ugliness of code before commits

### Code in the large

* Define the relationship between our app and the rest of the world

* Dependency on 3rd party code should go thru an interface that is shared
* Thin layer in between.  Ex: `user_cache` instead of `REDIS`

* Article, Draft, Published 
* Using an aggregate

* Integration test - controllers
* Functional test - controller
* Unit test - model

* Suggestion...
* Acceptance - whole system
* Integraiton - code against code
* Unit - do our objects do the right thing and are they conveninet to work with


## External Links

* [Cane](https://github.com/square/cane)

