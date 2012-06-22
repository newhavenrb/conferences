Synopsis
--------

> What does really happen when we call a method? How do the different Ruby implementations actually figure out what code to execute? What plumbing is going on under the hood to get a speedy dispatch? In this talk we will have a look at the internals of the four major Ruby implementations - 1.8, 1.9, JRuby and Rubinius, focusing on their dispatch. From look-up tables and call site caches, to inlining and what on earth is invokedynamic? Expect C, C++, Java, and, of course, Ruby code. But fear not, all will be explained!

Intro
-----

* Ruby 1.8 is slow because it's interpreted
* Surprise!  Ruby 1.9 is too!
* Something like 55 Ruby implementations! (Big ones: MRI, JRuby, Rubinius)
* Ruby implementations like bytecode

Speeding it up
--------------

* Reduce ops -> speeds things up
* JIT
* Inlining
* Search (methods)

MRI
---

* `rb_call0`
  * search (`search_method`) and execute (`vm_call0` and `vm_exec` -- looks at the bytecode)

Rubinius
--------

* Structure: Module -> MethodTable (`Hash`-like) -> Bucket -> CompiledMethod

    compiled_method = DeepThought.method_table.lookup(:ultimate_answer?).method
    compiled_method.decode
    compiled_method.opcodes
    compiled_method.literals

* Some messages get special opcodes for optimization purposes
* A call turns into InlineCache (lookup is done so it doesn't have to redo it, unless types change)
* Can add native breakpoints (not slower, like in MRI)
* Rubinius Bytecode -> LLVM IR -> Native Code
* Does some analysis like JVM's Hotspot (at runtime)

JRuby
-----

JVM bytecode

Old: `invokevirtual` (uses custom runtime)

New: `invokedynamic`

* Linker
  * CallSite is like Rubinius InlineCache
  * Replaces with your method lookup logic
  * Bootstrap doesn't look up anything, because it doesn't know what the method will be called on
  * No lookup logic -- it only has classes
  * The Fallback is the actual lookup logic

Takeaways
---------

* Moving to faster lookup logic across implementations
* Fewer instructions == better
  * MRI -- what could it do better?  It's adding super-instructions
* Late binding
* Symbols aren't garbage collected.  You have user generated symbols?  They'll take up more and more memory!
  * They're the same object between instances
