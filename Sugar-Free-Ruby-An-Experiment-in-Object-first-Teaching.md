From [[Gogaruco 2012]]

**Presenter:** [[Steven Ragnarok]]

## Bio

> During the school year, Steven! is a student of computer science,
> mathematics, and latte art, and this past summer he interned at
> GitHub. Year-round he's a passionate Ruby hacker who loves
> contributing to open source projects like Faraday, Rubinius and
> Archlinux. He teaches and contributes to KidsRuby, CoderDojo, and
> Rails Girls and is also on the core team for RailsBridge. He has spent
> more than a few evenings scrabbling to get out of the Bronze League in
> StarCraft II. Most importantly, Steven! is a dedicated engineer with a
> passion for creating beautiful things.

## Abstract

> Ruby has a lot of syntax to come to terms with. In an effort to reduce
> learning overhead we often restrict what we teach by avoiding serious
> coverage of objects in early lessons. Yet objects are what make Ruby
> great. Rather than sacrifice Object Oriented Mechanics, Sugar-free
> ruby uses a minimum of syntactic sugar to reinforce the
> message-passing objective semantics of Ruby until the pupil
> understands and then can assimilate new syntactic elements with
> greater ease. This talk explores the advantages and pitfalls of the
> technique as well as other ways to teach Ruby.

## Notes from @myronmarston

* Teaching programming is really, really hard.
* Programming tkes a lot of self-reflection to teach well.
* It's getting better: Hungry Academy, Rails Bridge, etc.
* CoderDojo: Kids programming clubs
  * Game Builder, Scratch, Python, Hackety-Hack / Shoes
  * Most important lesson: Programming is Fun
* RailsBridge: Workshops for Women
  * Trying to install "Programming is Hard, but it's attainable"
* Teaching Ruby: the challenge is finding out why your students want to
  learn ruby.
* Teaching Ruby the good old fashioned way
  * Start with data types: integers, floats, strings, symbols, booleans
    arrays, hashes, variable assignment, conditionals, loops, etc.
  * Maybe if there's time, get to methods.
  * What's wrong with this: 6 concepts come before methods.
    No mention whatsoever of objects or classes.
* "Ruby is not a computer language" -- it doesn't care about
  that it runs on a computer.
* Let's teach objects and treat ruby as the computer.
* IRB is the best tool for learning ruby.
* How Steven teaches:
  * Everything is an object
  * They receive messages -- use `send` to show this.
  * Objects have a class
  * Instantiation with new; variable assignemtn as "giving an object a
    name"
  * Method definition
  * Introduce dot-syntax for calling methods.
  * Errors are your Friends -- try calling undefined methods
  * Use `Kernel.puts` as it is less "magical" than just "puts"
  * Define an accessor method, use an instance variable
  * Implicit receivers
  * Use conditionals to accomplish a goal.
  * Demonstrate creating a class with `Class.new`
  * This is focused on teaching objects with ruby.
* This is better because the object metaphor provides a
  context for everything else we learn about Ruby.

## Notes from @simeonwillbanks

https://speakerdeck.com/u/nuclearsandwich/p/sugar-free-ruby

### Introduction

Sugar-free emphasizes Ruby is Objects

### Teaching Programming

If we don't teach it, its going away

You owe it to your teachers to continue the tradition

Teaching programming is very hard!!
  * Its really hard to learn to program
    * Your assumptions aren't natural
    * Takes a lot of empathy
  * Its hard to share something valuable
   * We always want to gain value out of an interaction
   * You will be rewarded for your knowledge and sharing!

It takes a lot of self reflection to teach well  
Just like getting better at programming, you must always be a student

### CoderDojo

Dedicated to setting up kids coding projects  
In small groups, children learn to program  
Kids learn that **Programming Is Fun!**
 * Encourages children to continue to program
 * Its best way to engage kids, is to make an activity fun

### Rails Bridge

For anyone in this world, programming is hard but attainable  
Focus on fun parts like Rails instead of installing language and dependencies

### Challenge with Teaching Ruby

You have to know why the student is trying to learn
You have to ask, "Why do you want to learn Ruby?"
 * I hate my job and programmers make bank
 * I know how to program but not Ruby, the Ruby community is awesome!
 * I'm curious about programming

### How are we teaching Ruby right now?

 * Data types
 * True and false
 * Collection structures
 * Expressions
 * Console
 * Variables
 * Conditionals
 * Loops
 * If we are lucky, we might talk about `foo.upcase` aka objects

Where are students' minds blown? Information overload.

Whats wrong with this picture?
Too many concepts before discussing methods or even mentioning classes.

Ruby is not a computer a language!  
Ruby doesn't care its on a computer.

### Teach Ruby as Objects!

Reservation: students head will explode, but it already does with first way to teach via data types through loops.

Give the students an idea of Objects and let them explore via irb

Use `#send` to emphasize message passing  
Be explicit to really reveal the fact that messages are being passed

**Objects and classes are one in the same!**

### Now we can talk about a narrative

Gives student a thread to follow

`Object.new`
 * A message called new
 * Can be sent to any class
 * Gives you back and instance of that class
 * We give a name to the object

Helps student link in their minds exactly what is happening!

Kernal.puts is better than puts since mixins are _too complicated_ for now  
Keep the student on the narrative instead of going down a tangent  

### What have we introduced at this point?

Objects have methods which accept and send messages  
Introduce Classes except Class is a Class which creates new Classes

### Wrap up

**Teach objects with Ruby instead of teach Ruby with objects**  
Better foundation because Ruby cares about Objects and how they interact

Details on better foundation:
 * https://speakerdeck.com/u/nuclearsandwich/p/sugar-free-ruby?slide=61  
 * https://speakerdeck.com/u/nuclearsandwich/p/sugar-free-ruby?slide=62  
 * https://speakerdeck.com/u/nuclearsandwich/p/sugar-free-ruby?slide=63  
