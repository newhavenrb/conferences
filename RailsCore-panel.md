**Presenters:** RailsCore members:

* Aaron Patterson ([@tenderlove](http://twitter.com/tenderlove))
* Yehuda Katz ([@wycats](http://twitter.co/wycats))
* Jim Weirich ([@jimweirich](http://twitter.com/jimweirich))
* S. Pastorino ([@spastorino](http://twitter.com/spastorino)) TODO full name

## Summary

A panel of RailsCore members took questions about Rails and its future.

## Quotes

* "Fuck you if you use `unless ... else`" - _Evan Pheonix_
* "GitHub needs an issue bankruptcy button." - _Evan Pheonix_
* "Failure of leadership!" - Some guy in the audience TODO name

## Notes

* Thing you would remove?
    * Naming of testing is confusing - _@jimweirich_
    * `StringInquirer` (`Rails.env.development?`).  `'to'.in? ['blah']` ("backwards `include?`")
    * `ActiveResource` "an anemic toolset" (Rick Olsen's) - _@wycats_
    * Scopes - use class methods.  Esp. with lambdas. - _@spastorino_
* Thing you would add?
    * -Cornify- Rake - _@tenderlove_
    * Queuing - _@wycats_
    * Identity maps (But hard for backwards compatibility, cache invalidation.  It's been removed in master.) - _@jimweirich_
    * (missed it) - _@spastorino_

* @tenderlove: Rewriting Rack?
    * Decreasing stack depth
    * Lotta work
    * Hard
    * Interface written

* Public Pivotal Tracker for Rails Core?
    * Most people fix stuff they need.  Mostly random.  Except _@tenderlove (and @spastorino? maybe?).  - @wycats_
    * GitHub issues -> dartboard - _@tenderlove_
    * Pivotal isn't meant for projects like Rails.  - _@wycats_
    * Doesn't work on my open source.  - _@jimweirich_
    * Wouldn't help.  - _@wycats_
    * I do stuff we need for work.  Or stuff that seems like a common theme of problems.  - _@tenderlove_
* Rails API controller?  What makes it better?  (Not sure I understood the question) FIXME
    * Not sure I understood...
    * It got reverted.
    * But basically it sounds like Rails has too much stuff by default.  Sinatra is a lot faster.
* Concurrency better?  `autoload` bad (not thread-safe)?
    * Gonna remove.  - _@tenderlove_
    * No. - _@wycats_
    * Long question.  - _Evan_
    * `autoload` makes it so we don't need `require` as much. Eager load everything in production... (cut off) - _@wycats_
    * I have doubts.  - _@tenderlove_
    * move on...
* @tenderlove Abrupt ending?  No hugs?  - _@abelmartin_
    * Can't top last year.  Kept it real.  Critical of Rails because I care. - _@tenderlove_
* So many open issues on GitHub?
    * "GitHub needs an issue bankruptcy button." - _Evan_
    * Need bug busting days. FIXME not sure who said
    * Need canned responses.  - _@tenderlove_
    * Close and ask for more info.  - _@wycats_
    * Community triage.  - _@tenderlove_
    * Everybody triage 3 tickets.  - _Evan_
    * (We'd need rules, @benjaminoakes thinks.)
    * Tag with version of Rails it's for. - _@spastorino_
* Evan: Rubinius? - _@tenderlove_
    * More project management.
    * Focusing on 2.0

Coloring books contest.  @tenderlove's cat for the win.  :)

## External Links

* [puma](http://rubygems.org/gems/puma)
