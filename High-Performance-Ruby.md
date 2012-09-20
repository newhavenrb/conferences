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

## Notes from @myronmarston

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

## Notes from @simeonwillbanks

### Introduction

JRuby
How do we make Ruby fast?

### What does performance mean?
Man hours vs. CPU  
Straightline, time

### High Performance?
which ruby implementation     
ruby faster than other runtimes?

### Fast Enough?
1.9.3 fast enough and 1.8.7 is slow

### Performance Wall
Can't get done what you want to get done   
You're bound by your architecture   
Move to different runtime   

*If you're not writing performance sensitive code in Ruby, you're giving up too easily!!!*

### Native Extensions
Not universally bad, but bad in MRI   
What is bad is the way their implemented within CRuby   
Unless you're in MRI, you're limited when writing native extensions

### What We Want
Faster execution   
Better GC, non-blocking   
Parallel Execution via threads or actors within a process   
Big data by continuous scans

*Can't have any of these with current C extension implementations!*

### Different Approach
Don't fallback to C, so lets improve Ruby to make it faster.

1. Build your own runtime like YARV, Rubinius or MacRuby
2. Use an existing runtime like JRuby

### Build or Buy
Making a new VM is easy (early rubinuius was simple)   
Making a new VM competitive is *really really hard*

### JRuby choose JVM
15 years of open source experience and super quick   
Best GCs available   
Full parallel threading   
Broad platform support so wide adoption   

### But Java Is Slow?

Rumor is dying because Java is now C fast   
Java is terrible for application development because too many abstractions   
Simple algorithms can compile to same bytecode as C   
*The way you write code is much more important than what you write it in*

### JRuby
Java implementation of Ruby on JVM   
1 to 1 compatible with MRI   
JRuby JITs to JVM bytecode

### Can Still Be Faster
Still things about Ruby which defy optimization such as interpreter optimization

(see slides for great timeline of commits)

### Goal is to Align Ruby with JVM
Ruby local variables are JVM local variables   
Avoid inter-call goo   
*Eliminate unnecessary work*

### Unnecessary Work
Everything is a map such as modules, instance variables

### Method Lookup
Method lookups go up-hierarchy   
Lookup target caches result (child caches method defined in parent)   
Modification cascades down

### Bottom Line of Optimizing Ruby
Make calls fast   
Make constants free

### Invokedynamics

### JVM 101
Opcodes / Data endpoints
 * Invocation
 * Field access getting data out of object
 * Array access
 * 
All Java code revolves around these endpoints

If you every stray outside of opcodes, you are stuck!   
We need millions of operations!   

With invokedynamic, we can get around this problem
  1. invokedynamic bytecode
  2. bootstrap method
  3. method handles
  4. find target method on JVM (see diagram on slides)

Now the path is cached and optimized!

*InvokeDynamic lets JRuby teach the JVM how Ruby works, so the JVM can optimize like any other language on the JVM*

### How do we know JRuby is fast?

**Benchmarking is really hard**

### JVM opto 101
JITs code bodies after 10k calls   
Inlines up to two targets   
Optimistic by making very aggressive decisions   
 * Makes optimistic decisions for a small system, but those decisions
 * Will have to be reversed for large systems
Inlining optimizes and writes bytecode for a chunk of code instead of pieces

Benchmarking is not always enough, you have to read the assembly generated by JVM

### Moral
Benchmarks are synthetic   
Every system is different   
Figure out what is slow in your system, and benchmark this part of your system

### Rails?
Significant gains for some folks

### What is next?
Expand where JRuby optimizes such as super

### Wacky stuff?
Optimize things like `respond_to?` or `method_missing`

_Ruby flip-flops_
http://stackoverflow.com/questions/1111286/when-would-a-ruby-flip-flop-be-useful

### The Future
JRuby will get faster!    
InvokeDynamic will get faster!

## External Links

* [An experiment in static compilation of Ruby: FASTRUBY!](http://blog.headius.com/2012/09/an-experiment-in-static-compilation-of.html)
* [Slides](http://www.slideshare.net/CharlesNutter/high-performance-ruby-golden-gate-rubyconf-2012) ([Alternate](https://speakerdeck.com/u/headius/p/high-performance-ruby-golden-gate-rubyconf))
