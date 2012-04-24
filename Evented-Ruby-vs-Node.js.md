**Presenter:** Jerry Cheung

## Bio

> Jerry Cheung splits his time as a co-founder of Opperator and a developer at Intridea. He is a co-author of the upcoming MacRuby in Action, and likes contributing to open source. He's currently dabbling in evented Ruby and Grape driven webapps. When he's not coding, he stalks awesome cars in Southern California and writes about them in RockyRoadBlog.

## Abstract

> While Node.js is the hot new kid on the block, evented libraries like EventMachine for Ruby and Twisted for Python have existed for a long time. When does it make sense to use one over the other? What are the advantages and disadvantages to using node over ruby? In this talk, you will learn how to get the same power of concurrency enjoyed by Node.js while continuing to write in the language you know and love. Topics covered will include pubsub with redis or faye, building evented rack applications, and running evented applications alongside existing Rails apps.

## Summary

* Basic overview of the Reactor pattern, registering callbacks, and blocking vs non-blocking IO.

## Notes

### From @benjaminoakes

(missed the first part)

* Don't micro-optimize, but still keep your stuff fast.  Go for things that are simple to implement and maintain.
* Overview
    * Evented programming: registering callback (e.g. in a click handler)
    * Reactor pattern (event loop, basically), e.g., the browser's event loop, game loop
    * Blocking I/O: ram (F18 jet) vs disk (slug)
* OS hides a lot of this in caching
* Node.js: On top of OS concurrency, IO managed at the app-layer
* Less blocking -> more concurrency
* Rails concurrency is based around processes.  Lots of waste in terms of memory.  And each intance only handles one request at a time.
* Node.js: register callbacks instead of waiting for network request, etc to finish
* Latency vs concurrency; the disk doesn't get faster :)
* But the code is pretty ugly... lots of nesting.  "Callback spaghetti"
* Evented Ruby
    * We can mix and match
    * Thin is evented (using EventMachine`)
    * Passenger can be evented too
    * `x = EM::HttpRequest.new(...).get; x.callback { }` has a smell
    * `response = Faraday.get('...')` looks procedural, but can be made to be non-blocking
    * Use fibers; pause and resume
    * Scheduling must be done by programmer

## External Links

* [node.js](http://nodejs.org/)
