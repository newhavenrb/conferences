**Presenter:** Piotr Sarnacki

## Bio

> I'm passionate rails developer that loves open source. I was participating in Ruby Summer of Code 2010 with "Rails 3 Mountable Apps" project and I still try to contribute to Rails as much as I can.

## Abstract

> Rails got much more modular after 3.0 rewrite. But do you know how to use specific rails elements outside Rails? What if you would like to use ActionView with some other library (like webmachine)? Have you ever needed to render view with layouts outside of the rails stack? Or maybe you wanted to build some kind of system that fetches templates from database rather than from files? Router anyone? You know that you can use it outside rails too?
>
> In this talk I will dive into  Rails internals and will show you what's there and how you can use it outside rails.
>
> Although I will focus on using those parts standalone, this knowledge will most likely help you also build your apps if you ever need something sophisticated that requires modification of regular rails behavior.

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

### From @james\_gary

TODO

## External Links

* [Some related website](http://www.example.com/)
