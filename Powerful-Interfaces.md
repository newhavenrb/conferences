**Presenter:** Caike Souza
@caike

## Abstract

> In this talk we will explore the best practices in using interfaces as the foundation for designing object oriented applications in Ruby and Rails. We will talk about some of the techniques that make it possible to write loosely coupled components that can be easily extended to respond to requirement changes.

## Notes

### @ZachMorek 

* Why developing rails apps is awesome
* Granularity
* Problems with granularity, team issues, no more fun

* Interfaces
* Add an extra layer of abstraction in the 
1 do what it says it will
2 do no harm
3 notify if something goes wrong
Factory Method Pattern

Replacing Active Record with an Interface
`new` -> `build_with`
`save` -> `place`

Plain Old Ruby Method (PORO)

Pre-Conditions
* What the interface relies on
* User must have valid email
* Product must be available

Post-Conditions
* What the interface will guarantee
* User must have a new payment.
* Seat must be reserved

Invariants
* True before, during and after
* User must be registered
* Store location must be open

Fat models; Thin controllers
Model != ActiveRecord::Base Models

Rails fails tests -> Rails is not your application -> It should be factorable into a Gem

Rails Models Complexity Pyramid
Base - 0 - Rails out of the Box
Mid - 1 - Protect AR::Base methods from controller
Top - 2 - Hide AR::Base classes from controller

## External Links

* [Slides](http://speakerdeck.com/u/caike/p/powerful-interfaces)
