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
    * Use HTTP (but you don't *have* to)
    * Business processes exposed via hypermedia

## Discussion

* But if you do "Rails REST", does that make things harder for not-Rails projects?  @benjaminoakes

### External Links

* [Slides](http://steveklabnik.github.com/hypermedia-presentation/)
* [Some People Understand REST and HTTP](http://blog.steveklabnik.com/posts/2011-08-07-some-people-understand-rest-and-http)
