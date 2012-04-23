**Presenter:** Steve Klabnik

## Bio

> Steve is a Ruby Hero, software craftsman, and an aspiring digital humanities scholar. He spends most of his time contributing to Open Source projects, and maintains both Hackety Hack and Shoes. He also teaches classes with Jumpstart Lab.

@steveklabnik, http://steveklabnik.com

## Abstract

> Rails did a lot to bring REST to developers, but its conception leaves the REST devotee feeling a bit empty. "Where's the hypermedia?" she says. "REST isn't RPC," he may cry. "WTF??!?!" you may think. "I have it right there! resources :posts ! What more is there? RPC? Huh?"
>
> In this talk, Steve will explain how to design your APIs so that they truly embrace the web and HTTP. Just as there's an impedance mismatch between our databases, our ORMs, and our models, there's an equal mismatch between our applications, our APIs, and our clients. Pros and cons of this approach will be discussed, as well as why we aren't building things this way yet.

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

### On the client side

(bonus!)

He built a micro-blogging client in Shoes.

"We can change the way the client works by changing the way the server
works." But it seems there still must be some knowledged of the
server, so how does the knowledge of the CHANGE get into there? I
don't understand something here, but it's very interesting.

## External Links

* [Roy Fielding's dissertation](http://www.ics.uci.edu/~fielding/pubs/dissertation/top.htm)

## Quotable Klabnik

"The last thing you want to do is tell everyone you're an expert, and
then _not_ be an expert, right?"

"If you're trying to change someone's opinion, the last thing you want
to do is tell them they're stupid."