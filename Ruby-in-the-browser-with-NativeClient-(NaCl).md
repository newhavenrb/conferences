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
* Limited functionality.  Can't fork, limited FS access, etc.
* Figures out your platform (x86, ARM, etc) over JSON

* You can talk via JavaScript using the Pepper API
* Listening for events
* Like WebWorkers
* Has simlar APIs to browsers
* Same priveledges as the JS runtime

naclports
---------

* Can do pthreads (browsers are single threaded, but Chrome has separate processes)
* Lots of C/C++ libraries
* Video
* Native

* Need: Chrome ~9 (1 yr old) with nacl enabled
* Latest: 14
* http://nacl-quake.appspot.com/

Future of NaCl?
---------------

* Cool, but...
* It's in the wild
* But getting replaced with PNaCl
* See chrome://plugins -- enabled in the Chrome Web Store (for Chrome apps)
* Long term vision?  Maybe enabling outright

* Examples
  * Netflix on the Chromebook
  * Google app engine
  * Exacycle -- for scientific computing

PNaCl
-----

* Does LLVM bytecode!
  * Fortran!
  * PyPy
  * Rubinius
  * Objective-C

EMScripten
----------

* LLVM to JavaScript
* http://repl.it
