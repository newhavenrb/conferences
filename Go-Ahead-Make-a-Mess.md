From [[Gogaruco 2012]]

**Presenter:** [[Sandi Metz]]

## Bio

> Sandi Metz has 30 years of experience working on projects that
> survived to grow and change. During the daytime she writes software at
> Duke University, in the evening, builds bicycles, and in the wee dark
> hours of the early morning is finishing the final chapters of the book
> Practical Object Oriented Design in Ruby.

## Abstract

> Software is always a mess. You can't avoid this mess, and if hubris
> goads you into attempting to achieve perfection, you'll just make
> things worse. Perfection is a distant, dim land on the unreachable
> horizon. You'll not be going there today.

> What you can do, however, is use the techniques of object-oriented
> design (OOD) to make your messes manageable. OOD is good at messes. It
> understands their origins, predicts their courses, and foresees their
> outcomes. It shines a light down the dusty nooks and crannies of your
> app, showing you what to do and what to avoid.

> This talk shows you how to use OOD to create the best kinds of messes,
> those that let you get software out the door today without regretting
> your actions tomorrow.

## Notes from @myronmarston

* Learn to understand the mess of a code base
* The source of the problem is objects having knowledge of other objects
* Controlling dependencies requires understanding stability of bits of
  knowledge
* OOD helps you write code that your future self will love.
* Design lets you stop worrying and learn to love the mess.
* Omega Mess: end of line, no dependencies, no dependents
  * Hides behind a message
* It's about the message
* What is the future cost of doing nothing now?
  * If it's the same cost in the future compared to now, then wait.
* Meta Knowledge: Knowledge about Knowledge
  * The domain of design
* Preference: send a message rather than implement behavior
* "What message should I send?" -- create the object if need be

## Notes from @simeonwillbanks

https://speakerdeck.com/u/skmetz/p/go-ahead-make-a-mess

### Life Cycle of a Rails Project
Satisfaction == Getting stuff done    
App is done and awesome   
Customer asks for changes  
Customer changes their mind  
Now you make 50 changes  
Customer asks for new feature tomorrow!   
Now you hack the code into submission  
You checkin code and don't want your name on it   
Now you hate ruby, rails and your life  
App was amazing and now its just a mess  
Until you change this pattern, it will repeat  

App is interwoven by knowledge

Objects have to collaborate

Objects will always have dependencies

Controlling dependencies keeps an app stable

Stability is relative

The developer is confused and we don't know enough about our app

Object Oriented Design gives us hope!
  * helps you write code your future self will love
  * lets you stop worrying and love mess
  * keeps satisfaction high!

### Object Oriented Design Examples

1. Label the Knowledge
   no dependants  
   no dependencies  
   End of the Line  
   mess is completely self contained, its called an Omega Mess, huge scary method  
   Omega Mess hides behind the message since its just one method  

   "Its not about the code. Its about the running, living, breathing objects as the interact in memory. Its about the message."

   Knowledge Plot  
   extremely helpful  
   tells us how to model our knowledge  
   (see slides)

   Its common to not know how stable code is.  
   "What is the future cost of doing nothing now?"  
   "Refactoring to simplify code is like buying a ticket in a lottery which  
   is rigged in my favor."  
   Its worth it to neaten the Omega Mess.  

2. Complicate the Code
   Conditional with messes in each branch  
   Not an omega mess  
   A case statement caused an explosion of dependencies  
   It is called Meta Knowledge
     * Knowing how a puzzle fits together
     * The domain of design

   Method is not only costly to change, but it is likely to change
   A number is an indicator to this problem  

   Preference: "I'd rather send a message than implement behavior"  
   We can remove dependencies by asking, "what message should I send?"  

3. Composition
   Don't want to know things, we just want to ask somebody  
   Don't want to know calculation, so we need to figure out message to send  
   Calculations are isolated  
   Make Compositions better with Convention over Configuration  
   Use metaprogramming to _manufacture_ a class  
   We just made a factory!  
   We love Factories - something that manufactures an object is a factory  

   Composition: it does not matter what is behind the interface

### Reprise
Object Oriented Design is a set tools that tells you the consequences of how you organize code

We can all learn from those who have come before

You should depend on things more stable than you are

Isolate uncertainty and arrange code so you can't see the mess

Stand on the Shoulder of Giants

The best thoughts of anyone are available to everyone

We can grow, learn and teach each other

You can never outgrow the principal of design!!!

**THIS talk was really really awesome**

### NOTES
http://www.websequencediagrams.com/  
Visual representation of knowledge and messages passed in the code
