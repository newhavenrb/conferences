Goal
----

    Share | Shared Mem| Variables
          | Files     |          
    ------|-----------|-----------
    Copy  | Pipes     | ???
          | Sockets   |    
    ------|-----------|-----------
          | Processes | Threads

What goes in the "???" box?

### Goroutines

* Go has "Goroutines"
* Maps well to distributed model
* Maps to a pool of threads

### Actors

* In Erlang and Scala, it's primary
* Has a mailbox -- you send it a mesage
* Thread- or Fiber-backed
* No locks

### Actor.rb

* Comes with Rubinius
* Works on MRI and JRuby
* Ping pong example
* "Hard to understand, use correctly"

### Celluloid

* From Tony Arcieri (Revactor, Reia)
* http://github.com/tarcieri/celluloid on GitHub
* But 1 object == 1 thread :( (lots of memory)

### girl_friday

* The presenter's
* ...actually seems a lot like `Thread.new { ... }`

Solutions for concurrency
-------------------------

### STM

* Software Transactional Memory
* Mutation via transactions
* Clojure (and Cloby) uses it
* Does the "ACI" of ACID

### Atomics

* From Java
* `java.util.concurrent`
  * `ConcurrentHashMap`
  * `ConcurrentLinkedQueue`

TODOs
-----

* Standard actor API
* Concurrent data scrutctures
* STM implementations for Ruby

To see
------

* Kilim
* Disruptor
* Actors in Scala/Concurrency in Erlang
* _Java Concurrency in Practice_ book
