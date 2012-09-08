* _Web Sites_ vs _Web Apps_
* When do take either approach...
* Apps are more dynamic
    * More updates
    * More feedback
    * If high latency matters, you want this
    * Web app is "just another client" (if you're already making an iOS or Android app)

* Different approahces for what response looks like
* In an "app" you can heavily cache the initial HTML response
    * Cache manifest (`Rack::Offline`)
    * HTTP Caching...  easy in Rails
        * `Last-Modified`
        * `ETag` (`stale(foo)`, Rails 4 will have an `etag` method for the controller)
        * Public cache via `if stale?(foo, public: true)` (uses HTTP semantics but with middleware)
        * JSON is much easier to cache
        * `X-Request-Id` -> `request.uuid` (great for logs -- one id across systems, error reporting in the client, etc)

Other various JS, etc (see slides)
