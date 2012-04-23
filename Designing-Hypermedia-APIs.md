**Presenter:** Steve Klabnik

## Bio

> Steve is a Ruby Hero, software craftsman, and an aspiring digital humanities scholar. He spends most of his time contributing to Open Source projects, and maintains both Hackety Hack and Shoes. He also teaches classes with Jumpstart Lab.

## Abstract

> Rails did a lot to bring REST to developers, but its conception leaves the REST devotee feeling a bit empty. "Where's the hypermedia?" she says. "REST isn't RPC," he may cry. "WTF??!?!" you may think. "I have it right there! resources :posts ! What more is there? RPC? Huh?"
>
> In this talk, Steve will explain how to design your APIs so that they truly embrace the web and HTTP. Just as there's an impedance mismatch between our databases, our ORMs, and our models, there's an equal mismatch between our applications, our APIs, and our clients. Pros and cons of this approach will be discussed, as well as why we aren't building things this way yet.

## Notes

### From @benjaminoakes

* Steve works on:
    * Hackety Hack
    * Jumpstart Lab
* "Rails' REST isn't real rest"
* Is working on a book on "real" REST (lean startup style)
* Don't be agressive when telling someone they're wrong
* Who knows what REST means?
* Better to come up with a productive discussion
* We're talking about Rails REST
* Better than SOAP
* Let's talk about hypermedia APIs instead
    * "Beyond just media"
    * Links that connect
    * Give links to other media in your JSON, etc.
* Too much ("X-rated level") coupling in our current APIs
    * Microseconds matter?  REST isn't for you
    * Caching can help
* "People are fairly good at short-term design and usually awful at long-term design" - Fielding
    * Software built on a scale of decades (e.g. HTML)
    * "Release!" as a short term goal
    * 'longevity and independent evolution'
    * Change code easily == good code
    * The web has design choices that allow decoupling and indepentent parties working together
* Hypermedia APIs
    * Use HTTP correctly (but you don't *have* to use HTTP)
    * Business processes exposed via hypermedia
* W3C love example
* JSON/XML can't drive your API
    * Not semantics
    * Just serialization
    * (No standards for links)
    * Build semantics on top of it
    * Type: `application/vnd.w3clove.validation+json` (let's you know you can handle as JSON)

### From @galtenberg

* REST APIs -> Hypermedia APIs, just a rebranding, equivalent (because who knows what REST means?)

* Hyper = links

* We currently have an XXX level of API coupling

* REST: "Many of the constraints are directly opposed to short-term efficiency." "REST is software design on the scale of decades." -Fielding

* Hypermedia APIs: 1) Use HTTP Properly 2) Use Hypermedia to guide clients through business processes

* Thinking in APIs = thinking in state machines

* json can't drive a hypermedia api - so build hypermedia semantics on top of json


### From @skalnik
* http://steveklabnik.github.com/hypermedia-presentation/
* Started searching for the meaning of REST
* Like an indian journey
* Always like to be learning
* When people you respect/know are smart say something you don't know, or
  disagree with, make a mental note to learn more
* Happened with "Rails REST is not real REST"
* Decided to lean startup a book
* Put up an email form to see if people care
* Spent 8 months researching
* REST is over. (SUPER DEEP Portlandia reference)
* Can't just say "no YOUR WRONG"
* REST isn't a great term either
* When I say REST I mean 'Rails REST'
* Rails REST is a good default, but we can do better. (Progress!)
* ~~REST~~ Hypermedia APIs
* Big difference is links to other parts of content in your responses
* Hypermedia designs scale better, are more easily changed and promote
  decoupling and encapsulation, with all the benefits those things bring.
* We're good at saying things like "We love decompling. We love encapsulation."
  and then write 1000 line models.
* Current APIs have massive coupling between client/server.
* On the downside, it is not necessarily the most latency-tolerant design, and
  caches can get stale if you're not careful. It may not be as efficient on an
  individual request level as other designs.
* "REST is software design on the scale of decades: every details is intended to
  promote software longevity and independent evolution. Many of the constraints
  are directly opposed to short-term efficiency. Unfortunately, people are
  fairly good at short-term design, and usually awful at long-term design." _
  Fielding
* People are good at thinking in short term not long term.
* Coupling is the enemy!
* "Webscale" is a thing. Google only encourages a few languages because they
  account for 8% of the traffic
* 1. Use HTTP Properly*
* 2. Use Hypermedia to Guide clients through business processes
* Why HTTP?
  * Fills all constraints except "hypermedia as the engine of application state"
* Use links, use HTTP correctly.
* "GET /photos/12/delete" is not using HTTP properly
* 5 steps of Hypermedia API design
  1. Evaluate business processes
  2. Create state machine
  3. Evaluate media types
  4. Create media types
  5. Implement!
* W3Clove.com crawls your site and validates all HTML
* JSON cannot drive your API. Custom format that uses JSON? Sure.
  * How do you do a link in JSON? There's no standard.
* Ideally you can use a type that already exist
  * Collection+JSON
  * HAL
* HTTP is a happy accident
* Fielding codified what was already around
* 2 things need to be considered when desining type:
  * data elements
  * hypermedia controls
* Custom type for w3clove: application/vnd.w3clove.validation+json
* +json means you can parse as JSON.
* Namespaced under vnd.w3clove.validation, but if other people made validations,
  then perhaps people could make application/validation+json
* Investigate how standards commities work
* { links: [
    {"rel":"website-form", "href":"..."},
    {"rel":"sitemap-form", "href":"..."}]
  }
* Examining your API as a statemachine is valuable by itself (if it takes 30
  steps to do something, no wonder you're not making money)
* <Slides are over, lets talk about clients>
* Sample twitter client
* Only 1 URL is stored. DECOUPLING!
* Allows changing of how the client works by altering the API.
* Same model on client & server? NO, canonical source is server.
* Server driven, client just reacts


## Discussion

* But if you do "Rails REST", does that make things harder for not-Rails projects?  @benjaminoakes

### External Links

* [Slides](http://steveklabnik.github.com/hypermedia-presentation/)
* [Some People Understand REST and HTTP](http://blog.steveklabnik.com/posts/2011-08-07-some-people-understand-rest-and-http)
* [w3clove.com](http://w3clove.com/) - crawls your site and checks validity
    * See also tarantula gem
* [Microblog Client Example](https://gist.github.com/2187514)
