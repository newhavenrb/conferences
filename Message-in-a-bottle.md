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

