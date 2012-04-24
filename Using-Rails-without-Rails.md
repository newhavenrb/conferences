**Presenter:** Piotr Sarnacki

## Bio

> I'm passionate rails developer that loves open source. I was participating in Ruby Summer of Code 2010 with "Rails 3 Mountable Apps" project and I still try to contribute to Rails as much as I can.

## Abstract

> Rails got much more modular after 3.0 rewrite. But do you know how to use specific rails elements outside Rails? What if you would like to use ActionView with some other library (like webmachine)? Have you ever needed to render view with layouts outside of the rails stack? Or maybe you wanted to build some kind of system that fetches templates from database rather than from files? Router anyone? You know that you can use it outside rails too?
>
> In this talk I will dive into  Rails internals and will show you what's there and how you can use it outside rails.
>
> Although I will focus on using those parts standalone, this knowledge will most likely help you also build your apps if you ever need something sophisticated that requires modification of regular rails behavior.

## Summary

A discussion of Rails internals;  specifically, a look at how ActionController and ActionView work underneath.  Since they're separable, an example of using ActionView in another framework is presented (`WebMachine`).

## Notes

### From @benjaminoakes

* Who
    * Polish
    * He works for Mixbook
* Maybe not ready for production use? (Having a hard time understanding)
* Rails is complicated
    * 3.0 is more modular
    * Take something small, extend to see possibilities
* `ActionController::Base`
    * Lots of `include`s
    * `AbstractController` doesn't get you much
    * ...but if you `include AbstractController::Rendering`...  you get `render`
    * `include AbstractController::Layouts`... layout support
    * http://gist.github.com/2482523
* Views
    * `ActionView::LookupContext`
    * `lookup_context.find(name, prefixes, partial)` (I've found this useful for doing mockups with our designer)
    * `ActionView::Renderer#render, context, template: 'page')`
    * Context...
    * In `ActionView`, template is `LookupContext`, renderer is `Renderer`, context is `Context`
* `WebMachine`... can you make it use the above?
    * `WebMachine::Resource` using `ActionView::Base`, etc.
* Techniques
    * Read the code
    * Use a debugger
    * Recommends José Valim's _Crafting Rails Applications_
* `Journey`
    * Rails routing layer  FIXME I'm confused on this.  It might be for Rack.
    * Seperable router.  Can use with bare Rack or Sinatra (I assume)
* Summary
    * Knowing how it works is good
    * Might lead to improvements in Rails

### From @james\_gary

* Warning: Not exactly production-ready code, just for fun
* So why talk about it? To experiment, to inspire, for fun
* Rails is big and has many part and complicated
* Rails 3.0 is more modular
* Easier to learn now than before
* How to learn?
  * Take minimal working version from Rails, recreate or extend it
* Example: I want to check how ActionController works
  * ~30 includes
  * Digs deep and plays around
  * gist.github.com/2482523
* Good design: reusable and decoupled
  * A lot of APIs in Rails is just syntactic sugar over other APIs
  * > Design is about pulling things apart - Rich Hickey
* Example: I want to check how ActionView works
  * A lot of things here
  * Where to start?
  * AbstractController::Rendering
  * ActionView::LookupContext
    * Responsible for templates lookup
* Read the code. Just read it.
* Use a debugger
* Play with the code. Experiment.
* Super helpful when doing crazy stuff: Crafting Rails Applications by Jose Valim

## External Links

* [Slides](http://bit.ly/using-rails-without-rails)
