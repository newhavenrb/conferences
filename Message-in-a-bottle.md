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

* JVM bytecode
  * Old: `invokevirtual`
  * New: `invokedynamic`

