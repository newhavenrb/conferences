> Pop quiz, hot shot! What is the value of this Ruby expression: `2 + 3`?
>
> What if I told you that somewhere earlier I had done this: `class Fixnum; alias :+ :*; end`? Changes everything, right?
>
> We're all familiar with Ruby's open classes. For many of us, they're one of the facets of Ruby that make it so much fun to work with. However, Ruby treats bindings as first class objects, and they are, similarly, open. This can lead to problems. What sorts of problems? Well, effectively, the only way to know what a Ruby program will do is to run it. Stated another way: it is impossible to reason about Ruby.
>
> Now, this may not seem like such a big deal for the seasoned Rubyist. So long as we're responsible in how we write our code and make sure not to do anything too crazy, we can have a pretty good idea of what any piece of code will do ahead of time. Unfortunately, compilers and runtimes can't rely on "responsible" programmers and having a "pretty good idea" of what code will do just doesn't cut it for a VM. As a result, method caches get invalidated far too often and whole classes of common optimizations do not work with Ruby.
>
> So, what's a programming language to do? Luckily, Ruby is not alone in facing this dilema. The Scheme community has been confronting similar issues from the very beginning, and in the R5RS and R6RS reports, they outlined a solution. This talk will take a look at what makes first-class environments and "eval" so problematic, and what lessons Ruby might learn from Scheme in how to be more reasonable.

* You read more code than you write
* What does it mean?
  * Semantics
  * Environment matters (e.g. `binding # => all of the bindings in scope`)
* Are first class environments (`Binding`) dangerous?
  * Ruby gives you the ability to get all bindings (live and mutable)
  * Can you reason about your code?  No
* Returning a `Proc` means any user of that `Proc` can mess with your `Binding`!

* "Capture the Flag" game example
  * `Method` is much more constrained than `Binding`

* Should we have a `use strict`?
