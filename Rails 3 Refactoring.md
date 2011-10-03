Rails 3 Refactoring
===================

Robert C. Martin (Agile Software Devlopment): SOLID

S: Single Resp Prin.
--------------------

* Rails 0.x: ActionView::Base had too many responsibilities (details, templates, context, etc)
* Rails 1.0: Reduce responsibilities, separate classes out, (Template handlers (builder, rjs, haml, erb): single responsibility)
* Rails 2.2: view paths extracted (multiple places for view templates, allows Rails Engines)
* Rails 3.0: View paths split into 'view paths' and 'resolvers'
  * Resolvers make it so views don't have to come from the filesystem (could be web service, database)
  * Added lookup context too, so less back and forth between view and controller
* Rails 3.1: AV::Renderer in from of ActionView -- only single responsibility per class
  * Allows you to use something other than ActionView (e.g. Merb's views)
  * Allows you to use the renderer in Sinatra

  class BasicController <actionControlle::Base
    include ActionView::Context
    ...

* Single reponsibilities: easier to separate out pieces and use them, and also replace them
* Easier to understand each piece
* Not as easy to take in the whole piece (top-down comprehension)


O: Open/closed Prin.
--------------------

* Extend class behavior without modifying the class
* Class open for etension, closed for modification
  * Latter isn't enforced by Ruby

* Don't break other people that depend on a library (e.g. modifying ActiveRecord::Base)
  * Lots of poeple do --- makes it hard to run multiple rails apps on a single process

D: Dependency Inversion Prin.
-----------------------------

"Depend on abstractions, not on concretions"

* Duck typing, basically.  Depend on abstractions (e.g. what methods are available), rather than a single concrete class.

    match '/foo', to: 'posts#index'
    match '/foo', to: PostsController.action(:index) # Missed this last part, but it's a rack app!

* Controllers have a middleware stack
* Remove hard-coded dependencies (e.g. pass as an optional parameter)
* Defining hooks (done in Railties)

L: Liskov Subs Prin.
--------------------

"Derived classes must be substitutable for their base classes"

* Need to respond to the same interface
* What about a new version of Rails?
* Static language: check to interface

    include ActiveModel::Lint::Tests # kind of the same idea

I: Interface Seg. Prin
----------------------

* Simplest protocol possible
* How to ensure?
  * When you test, odn't use the conrete class -- use a Mock that only implements what you're expecting!  (It's testing the 'concrete' interface, in a way)

Modularity driven by principles
