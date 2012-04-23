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

#### Benefits

Bug fixes: fix a bug, replay events, bug is fixed. Interesting.

Modeling:
* ES pushes non-domain logic out of the domain models (via event listeners)
* system decoupling

#### Drawbacks

Forces you to really analyze your problem - if you're a start-up, you
might not know the problem well enough.

Agility trade-off

Performance - large event logs. So store snapshots of domain
models. (ActiveModel serialization is great for this.)

#### Common Examples

* Source control! It's a history of events.
* Financial/accounting
* complex domains (this point seems unclear to me - example?)
* distributed systems, SOA


#### Example: ordering system

State is mutated through events/commands: events are applied to the
domain model.


#### DCI

* Data (model), Context (use-case), Interaction (role)
* Roles are modules that define actions/commands
* Separates domain data from domain behavior
* Mix-in or compose roles into objects

#### CQRS, CQS

CQS = Command/Query separation, methods should only mutate, or only
query

CQRS = C Q Responsibility Segregation, carries CQS to a system
architecture
* Domain models for application state
* "Read models" for system queries (reporting)
* Commands change system state (and can generate events)
* It's easy to test: mutate your state, check for events being raised


"Putting this into a project after the fact is hard."


## External Links

* [Martin Fowler on Event Sourcing](http://martinfowler.com/eaaDev/EventSourcing.html)
* [Speaker's blog](http://karmajunkie.com/)
* [Replay](https://github.com/karmajunkie/replay), a gem for Event Sourcing
* http://dddcqrs.com, redirects to http://cqrs.wordpress.com/
* [Domain Driven Design](http://domaindrivendesign.org/)
* DCI: [wikipedia](http://en.wikipedia.org/wiki/Data,_context_and_interaction), [artima developer](http://www.artima.com/articles/dci_vision.html)


## Discussion

"Drawback: Forces you to really analyze your problem - if you're a
start-up, you might not know the problem well enough." I think a lot
of software practices are like that.

Examples: I think database migrations are similar to this, but they
seem a bit different somehow.

"Store snapshots of domain models" - just remember that's a copy, not
necessarily authoritative.

"Putting this into a project after the fact is hard." That's really
discouraging, since most Rails apps probably didn't start with
this. But do you need to go all-in? Can't you do a section of your app
in this style? Each section could be a lot of work to refactor, but at
least it breaks it up.