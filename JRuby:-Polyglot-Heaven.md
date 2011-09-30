Synopsis
--------

> JRuby is a top-notch Ruby implementation. It's also your gateway to polyglot heaven. Ruby can do anything, but it's not always the best tool for the job. With JRuby, you can take advantage of other JVM languages. Build part of your application in Clojure, taking advantage of its immutability and transactional guarantees. Build another part in Scala, leveraging its flexible static type system and actor libraries like Akka. Use JavaScript via Rhino to test pages or run JS on the server alongside Rails. Use Mirah to build fast-as-Java algorithms in a Rubilicious syntax. The JVM is a haven for polyglots, and JRuby’s your ticket to ride.

Intro
-----

JRuby

* 50th release of JRuby coming out!
* Solid, 1.9 support, C extension support (experimental) -- lots work
* 1.6.5 soon
* Engine Yard Cloud -- official JRuby
* Book out: **Using JRuby**

Polyglot?
---------

Ruby's great, but some languages are better than Ruby at certain things

    gem install mvn:rhino:js

Group ID: rhino
Artifact ID: js

### Caveats

* Rubygems.org disallows external deps
* Bundler doesn't understand mvn gems
* Help wanted

JVM
---

* One family, one VM, one GC
* Memory usage
  * Better tooling than just on MRI

* Bidirectional communication
* Stick to primitives
* Use `interface`s rather than just straight method calls

    require 'java'

    java_import '...'

* Neo4j
* Rhino.js -- JavaScript on the JVM

Takeaways
---------
