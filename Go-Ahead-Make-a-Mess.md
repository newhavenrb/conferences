From [[Gogaruco 2012]]

**Presenter:** Sandi Metz

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

## Notes

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

