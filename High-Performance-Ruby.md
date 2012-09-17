From [[Gogaruco 2012]]

**Presenter:**  [[Charles Nutter]]

## Bio

> Charles works on JVM languages at Red Hat, focusing on Ruby but
> expanding to other languages soon. He has worked on JRuby for the past
> eight years and has been a JVM enthusiast since Java 1.0. Charles
> hopes to make JRuby the best Ruby implementation for high performance,
> big data, and heavy loads, and to use lessons learned from JRuby to
> help the JVM and other languages that run on it meet their potential.

## Abstract

> For years, the JVM has been the runtime to beat when it comes to
> runtime optimization and garbage collector performance. While
> statically-typed languages built atop the JVM have been able to
> leverage those capabilities, dynamic languages have often had a more
> difficult time. But the times they are a'changing.

> Java 7 brings to the JVM a new and powerful feature called
> invokedynamic. With invokedynamic, dynamic languages no longer have an
> automatic performance penalty. The optimizations that make Java and
> other statically-typed JVM languages run fast now apply to dynamic
> languages just as well. Imagine a world where Ruby runs as fast as
> Java, with nearly zero GC overhead, true parallel threads, massive
> heap sizes, and rock-solid stability. That's the potential of
> invokedynamic, the JVM, and JRuby, and I'm going to show you how it
> all fits together.

## Notes

* High Perf = faster than you need it to be.
* You hit a performance wall at some point.
* What we want:
  * Faster execution
  * Better GC
  * Parallel execution
  * Big data
* ...but we can't have these with the current way that C extensions are
  written.
* Different Appraoch:
  * Build our own runtime? YARV, Rubinius, MacRuby
  * Use an existing runtime? JRuby, MagLev, MacRuby, IronRuby
* It's "easy" to make a ew VM--but making it competitive is really,
  really, really hard.
* JVM
  * 15+ years of engineering by whole teams
  * FOSS
  * Fastest VM available
  * Best GCs available
  * Full parallel threading with guarantees
  * Broad platform support
* "But Java is slow"
  * Not anymore--it's literally as fast as C in many cases
  * In many cases it's the way the code is written
* JRuby
  * Java (and Ruby) implementation of Ruby on JVM
  * Same memory, threading model
  * JRuby JITs to JVM bytecode
  * It's been many, many years of hard work
* invokedynamic
  * Not just about invoking methods
  * Not just about dynamic typing
* JVM 101
  * 200 opcodes
* InvokeDynamic lets JRuby teach the JVM how ruby works
* Benchmarking is Hard
* Small code benchmarks very differently from large code
* Rails perf is a mixed bag right now.
  * Significant gains for some folks
  * Long warmup times for so much code
* The Future
  * JRuby will continue to get faster
  * Invoke Dynamic improvements at VM-level
  * Compiler improvements at Ruby level

## External Links

* [An experiment in static compilation of Ruby: FASTRUBY!](http://blog.headius.com/2012/09/an-experiment-in-static-compilation-of.html)
