Who: @tenderlove, @wycats, @jimweirich, @spastorino

## Quotes

* "Fuck you if you use `unless` / `else`"

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
