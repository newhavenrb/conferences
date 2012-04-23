**Presenter:** Brad Gessler

## Bio

> I'm the CTO at Poll Everywhere, the worlds largest mobile survey platform, and I love building stuff. I've been hacking Rails since 1.x, full embraced REST, and haves since extended the concept to make building realtime Rails application easier.

## Abstract

> As more people collaborate on the web with your applications, its not enough to just persist data to the database; it needs to be pushed out to your users web browsers so that they're always working with the freshest data.
>
> In this session, Brad will show how to build a real-time layer on top of an existing Rails application's authorization and resource logic so that you can build on top of the hard work already invested in your Rails application.
>
> Topics that will be discussed include:
>
> - Why I didn't choose Socket.IO
> - Stream application resources into Backbone.js models to keep data fresh
> - Hook into ActiveRecord to push representations of data into a message queue
> - Message queue naming conventions public/private resource streams
> - Exposing message queues to HTTP
> - Securing streams with existing application authorization logic
> - Considerations for streaming in a production environment

## Memorable Quotes

* "If you build something for the web that doesn't work with `curl`, it's too complicated"

## Notes

### From @benjaminoakes

* For realtime apps
* Long polling
    * The simplest solution is a variation on `setInterval`
    * Caching can help a lot ("throw a lot of RAM at the problem")
    * You'll get a bunch of "exceeded the rate limit" errors from Airbrake
    * Doesn't work at scale (large systems/streams)
* Monolithic apps
      * For larger development teams, monolithic apss can slow things down
      * "Rails App Maximus"
      * Makes it hard to do realtime streaming
      * Break app down into smaller pieces (e.g. all talk to JSON API)
      * Cache the hell out of the client apps (and even the JSON API)
      * Still not streaming yet...

New structure:

    Mobile Web App | Desktop App | SMS App
    --------------------------------------
                  JSON API
    --------------------------------------
         App        |       Stream

* Socket.IO didn't feel right (was a really early version)
    * Pushing data up becomes a problem
    * Too much / too little on API focus he was interested in
    * Mutiplexing is good though; but they don't have that need
* Another option:  Meteor
* They built their own
    * "What problem are we trying to solve?" Pushing data!
    * Sockets aren't the problem
    * Sending data *to/from* (requests)
    * Really just need requests + push data
    * Firehose.io (his) + Backbone.js
    * Firehose distributes to connected clients

### External Links

* [firehose.io](http://firehose.io/)
