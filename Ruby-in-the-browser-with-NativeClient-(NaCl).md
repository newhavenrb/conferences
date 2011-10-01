Intro
-----

* JS as a monopoly
* CoffeeScript?
* New TryRuby site
* gestalt -- let's you do `<script type="test/ruby"></script>`
  * Uses MS's DLR
  * Silverlight/IronRuby
  * Unsure future

History
-------

* Netscape, mimetypes, NPAPI
* Standalone plugins
* Powerful, but security nightmare

Chrome
------

* Separate processes
* NaCl
* Pepper Bridge (PPAPI)
* Sandboxed plugins
* Native machine code

NaCl
----

* Compile code with specialized toolchain (modified GCC)
* NaCl runtime verifies untrusted code (static analysis)
* Executes verified code
* Limited functionality.  Can't fork, no FS access, etc.
