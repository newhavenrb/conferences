**Presenters:** RailsCore members:

* Aaron Patterson ([@tenderlove](http://twitter.com/tenderlove))
* Yehuda Katz ([@wycats](http://twitter.co/wycats))
* Jim Weirich ([@jimweirich](http://twitter.com/jimweirich))
* S. Pastorino ([@spastorino](http://twitter.com/spastorino)) TODO full name

## Summary

A panel of RailsCore members took questions about Rails and its future.

## Quotes

* "Fuck you if you use `unless ... else`" - Evan Pheonix
* "GitHub needs an issue bankruptcy button." - Evan Pheonix
* "Failure of leadership!" - Some guy in the audience TODO name

## Notes

* Thing you would remove?
    * Naming of testing is confusing - @jimweirich
    * `StringInquirer` (`Rails.env.development?`).  `'to'.in? ['blah']` ("backwards `include?`")
    * `ActiveResource` "an anemic toolset" (Rick Olsen's) - @wycats
    * Scopes - use class methods.  Esp. with lambdas. - @spastorino
* Thing you would add?
    * -Cornify- Rake - @tenderlove
    * Queuing - @wycats
    * Identity maps (But hard for backwards compatibility, cache invalidation.  It's been removed in master.) - @jimweirich
    * (missed it) - @spastorino

* @tenderlove: Rewriting Rack?
    * Decreasing stack depth
    * Lotta work
    * Hard
    * Interface written

* Public Pivotal Tracker for Rails Core?
    * Most people fix stuff they need.  Mostly random.  Except @tenderlove (and @spastorino? maybe?).  - @wycats
    * GitHub issues -> dartboard - @tenderlove
    * Pivotal isn't meant for projects like Rails.  - @wycats
    * Doesn't work on my open source.  - @jimweirich
    * Wouldn't help.  - @wycats
    * I do stuff we need for work.  Or stuff that seems like a common theme of problems.  - @tenderlove
* Rails API controller?  What makes it better?  (Not sure I understood the question) FIXME
    * Not sure I understood...
    * It got reverted.
    * But basically it sounds like Rails has too much stuff by default.  Sinatra is a lot faster.
* Concurrency better?  `autoload` bad (not thread-safe)?
    * Gonna remove.  - @tenderlove
    * No. - @wycats
    * Long question.  - Evan
    * `autoload` makes it so we don't need `require` as much. Eager load everything in production... (cut off) - @wycats
    * I have doubts.  - @tenderlove
    * move on...
* Abel: abrupt ending?  No hugs?
    * Can't top last year.  Kept it real.  Critical of Rails because I care. - @tenderlove
* So many open issues on GitHub?
    * "GitHub needs an issue bankruptcy button." - Evan
    * Need bug busting days. (not sure who said)
    * Need canned responses.  - @tenderlove
    * Close and ask for more info.  - @wycats
    * Community triage.  - @tenderlove
    * Everybody triage 3 tickets.  - Evan
    * (We'd need rules)
    * Tag with version of Rails it's for. - @spastorino
* Evan: Rubinius? - @tenderlove
    * More project management.
    * 2.0

Coloring books!

## External Links

* [puma](http://rubygems.org/gems/puma)
