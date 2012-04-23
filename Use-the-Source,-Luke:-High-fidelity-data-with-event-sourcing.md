**Presenter:** Keith Gaddis

## Bio

> Keith Gaddis is a developer with almost fifteen years experience developing complex web applications, in industries ranging from medical applications to publishing to sports media.  He has over six years experience with Ruby and Rails, and has been building complex web applications for more than a decade.

## Abstract

> Ever run into a really gnarly data problem and wished you had a do-over? Tired of wrestling with ActiveRecord to model a really complex domain? Looking for a good way to echo state changes to external systems?  Then grab a cup of joe and settle in for a look at event-sourcing your data.
>
> Event-sourced data uses Plain Old Ruby Objects (POROs) to model your data and exclusively uses events to mutate state on those objects. By serializing the events, the state of your data can be recreated for any point in time, and outside listeners can create specialized purposeful datastores of the data, enabling complex business requirements with fewer hassles.  We'll also touch on other architectural patterns like DCI and CQRS that play well with this idea.

## Notes

### @danbernier notes

Fowler: "Capture all changes to an application state as a sequence of
events."

Events are serialized & stored - can be played back later
Snapshots of application state represent a point-in-time

(Often comes up w/ Domain-driven design)

Events are applied to domain models - it's the history of the data.
It _can_ be a big data set. Example: account history, knowing what
something looked like as of some billing date.

Bug fixes: fix a bug, replay events, bug is fixed. Interesting.

## External Links

* [Martin Fowler on Event Sourcing](http://martinfowler.com/eaaDev/EventSourcing.html)
* [Speaker's blog](http://karmajunkie.com/)
