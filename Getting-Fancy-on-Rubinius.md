Synopsis
--------

Presenter: @bakkdoor

> Fancy is a self-hosted, dynamic, class based, pure object-oriented programming language heavily inspired by Smalltalk, Ruby and Erlang that runs on the Rubinius VM. It has first class integration with Ruby, support for asynchronous message sends, futures and actors, a simple syntax and consistent semantics, object oriented pattern matching that preserves encapsulation and much more.
>
> Fancy runs on Rubinius, a modern bytecode virtual machine designed for Ruby. It is the first fully self-hosted language running on Rubinius besides Ruby.
>
> This talk will show Fancy's semantics and language features, its integration with Ruby code, as well as how the new implementation for the Rubinius VM works and what Rubinius has to offer for programming language creators alike.

Intro
-----

* Fancy was written in C++, but ported to the Rubinius VM and rewritten in Ruby.  It was shorter and faster!
* Goals: easy, consistent, newbie friendly
* Ruby influenced, along with Smalltalk, Io, Erlang
* Objective-C and Python bits too

Async
-----

* Futures
* Actors: asynchronous message passing
* Syntax for async and actors (e.g. `@@`)
* Actor Ring example from Erlang

Ruby integration
----------------

* It'd be a shame if it weren't there.  :)
* Friendly coexistance with Ruby
* First class Blocks -- you can pass multiples
* Lots of cool parts, lispy bits
* Takes advantage of how Rubinius is put together

Implementation Details
----------------------

* The compiler is just a subclass of the main Rubinius compiler
* Trying to reuse a lot of Rubinius internals

Takeaways
---------

* Fancy is a cool, but simple Ruby-ish language
* Rubinius is a great platform to play around with dynamic languages
* Not the only "other" Rubinius language
