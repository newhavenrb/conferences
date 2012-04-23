**Presenter:** [Steve Klabnik](http://twitter.com/steveklabnik)

## Bio

> Steve is a Ruby Hero, software craftsman, and an aspiring digital humanities scholar. He spends most of his time contributing to Open Source projects, and maintains both Hackety Hack and Shoes. He also teaches classes with Jumpstart Lab.

@steveklabnik, http://steveklabnik.com

## Abstract

> Rails did a lot to bring REST to developers, but its conception leaves the REST devotee feeling a bit empty. "Where's the hypermedia?" she says. "REST isn't RPC," he may cry. "WTF??!?!" you may think. "I have it right there! resources :posts ! What more is there? RPC? Huh?"
>
> In this talk, Steve will explain how to design your APIs so that they truly embrace the web and HTTP. Just as there's an impedance mismatch between our databases, our ORMs, and our models, there's an equal mismatch between our applications, our APIs, and our clients. Pros and cons of this approach will be discussed, as well as why we aren't building things this way yet.

## Summary

* Rails "doesn't do REST correctly", but don't worry about that too much
* Worry more about coupling
* Make it discoverable
    * There's nothing built into XML, JSON, etc. that provides this level of semantics.
    * Annotate with links and relations
* Example of "W3Clove" and a microblogging service

## Notes

### @danbernier's notes

The term "Hypermedia APIs" is used because a) Rails REST is not real
REST, and b) REST was a poorly-chosen term anyway. It also emphasizes
that you should return LINKS to other resources in your API responses,
not just data.

Hypermedia APIs:
* scale better
* are easier to change
* promote decoupling & encapsulation

Roy Fielding: apps today have radically high coupling between server &
client.

Hypermedia is _not_ for you, if you really need speed. Requires
caching, relies on text representation, etc.

From Roy Fielding: "REST is software designed on the scale of decades:
every detail is intentded to promote software longevity and
independent evolution. Many of the constraints are directly opposed to
short-term efficiency. Unfortantely, people are fairly good at
short-term design, and usually awful at long-term design."

Web-scale is uncomprehenably huge, and it works. That's an encouraging
sign, and worth looking at for designing your app.

COUPLING IS THE ENEMY of code changeability.

Two tips:
# Use HTTP Properly*
# Use hypermedia to guide clients through your business processes: HATEOAS

HATEOAS is an application-level concern, though, so you have to do it
yourself. @GET /photos/12/delete@ is valid HTTP, but not valid
HATEOAS.

Five Steps:
# Evaluate business processes
# create state machine
# evaluate media types
# create media types
# implement!

(What are media types?) (Oh, like application/foo, in the HTTP
headers.)

JSON can't drive a Hypermedia API, but you can build hypermedia
semantics on top of JSON: because there's no standard representation
for a link in JSON?

There's a tension between using an existing type, and making your own
type. Use existing ones when you can, but... Media type design is both
art & science.

In a media definition, you need data elements & hypermedia controls.

Example media type:
application/vnd.w3clove.validation+json
* "vnd" -> vendor
* "+json" -> if you don't grok this application type, you can treat it as json

HOW in the world does your client "discover" the semantics of the
state machine? Though, analyzing your app as a state machine is really
useful.

#### On the client side

(bonus!)

He built a micro-blogging client in Shoes.

"We can change the way the client works by changing the way the server
works." But it seems there still must be some knowledged of the
server, so how does the knowledge of the CHANGE get into there? I
don't understand something here, but it's very interesting.

#### After

I asked Steve about getting context around this, and he said there's a
post on his personal site, a "REST reading list." TODO find it.

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
* Take steps out.  Make it easier to order, sign up, etc.
    * Writing out the connections help




### From @galtenberg

* REST APIs -> Hypermedia APIs, just a rebranding, equivalent (because who knows what REST means?)

* Hyper = links

* We currently have an XXX level of API coupling

* REST: "Many of the constraints are directly opposed to short-term efficiency." "REST is software design on the scale of decades." -Fielding

* Hypermedia APIs: 1) Use HTTP Properly 2) Use Hypermedia to guide clients through business processes

* Thinking in APIs = thinking in state machines

* json can't drive a hypermedia api - so build hypermedia semantics on top of json


## Discussion

* But if you do "Rails REST", does that make things harder for not-Rails projects?  @benjaminoakes

### External Links

* [Slides](http://steveklabnik.github.com/hypermedia-presentation/)
* [Book site](http://designinghypermediapis.com/) (has forum)
* [Some People Understand REST and HTTP](http://blog.steveklabnik.com/posts/2011-08-07-some-people-understand-rest-and-http)
* [w3clove.com](http://w3clove.com/) - crawls your site and checks validity
    * See also tarantula gem
* [Example microblog app](http://alps-microblog.herokuapp.com/)
* [Roy Fielding's dissertation](http://www.ics.uci.edu/~fielding/pubs/dissertation/top.htm)

## Quotable Klabnik

"The last thing you want to do is tell everyone you're an expert, and
then _not_ be an expert, right?"

"If you're trying to change someone's opinion, the last thing you want
to do is tell them they're stupid."
