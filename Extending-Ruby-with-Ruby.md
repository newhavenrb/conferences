**Presenter:** Michael Fairley

## Bio

> Michael Fairley (@michaelfairley) is the lead developer at 1000memories, where he helps people preserve and cherish their most valuable memories. He’s an active open source contributor, and maintains a handful of side projects including mincemeat.py and bestintrobook.com.

## Abstract

> Other programming languages have powerful features that are often enviable while working in Ruby: Python’s function decorators, Scala’s partial evaluation, and Haskell’s lazy evaluation, among others. Fortunately, Ruby’s metaprogramming facilities give us the ability to add these features to Ruby ourselves, without the need for the core language to be changed.
>
> This talk will walk through adding simple (yet functional) versions of the previously mentioned features to Ruby, using Ruby, and discuss the dos and don’ts of responsible Ruby metaprogramming.

## Notes

### Method Decorators

Like function decorators (`@memoize`) in Python.  Example from the [README](https://github.com/michaelfairley/method_decorators):

```ruby
class Math
  extend MethodDecorators

  +Memoized
  def fib(n)
    if n <= 1
      1
    else
      fib(n - 1) * fib(n - 2)
    end
  end
end
```

### Partial Application

An attempt at adding Scala-like syntax to Ruby.  Example in Scala:

```scala
List(1, 2, 3).reduce(_ + _ * 2)
```

### Lazy Evaluation

Haskell doesn't evaluate functions until their results are needed.  He makes a `Lazy` class for Ruby to do this same type of thing (which can be used as a method decorator, of course).

## External Links

* [Slides](http://speakerdeck.com/u/michaelfairley/p/extending-ruby-with-ruby) (has speaker notes)
* `method_decorators`
    * [Code on GitHub](https://github.com/michaelfairley/method_decorators)
    * [RubyGem](https://rubygems.org/gems/method_decorators)