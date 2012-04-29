**Presenter:** Zach Dennis

## Bio

> Zach Dennis is a Software Craftsman/Partner at Mutually Human Software in Grand Rapids, MI. He's a proven RSpec and Ruby guru, founder of the Michigan Ruby User Group and co-author of The RSpec Book. He's contributed to several projects such as Ruby's standard library documentation, Ruby on Rails, and RSpec as well as many of his own. He's been leading and mentoring teams for almost an entire decade. In his spare time he reads copiously and plays the guitar. You can find him as @zachdennis on Twitter and @zdennis on Github.

## Abstract

> This talk applies the concepts of chaos theory to software development using the Bak–Tang–Wiesenfeld sand pile model as the vehicle for exploration. The sand pile model, which is used to show how a complex system is attracted to living on the edge of chaos, will be used as a both a powerful metaphor and analogy for building software. Software, it turns out, has its own natural attraction to living in its own edge of chaos. In this talk, we'll explore what this means and entertain questions for what to do about it.
>
> The speaker's hypothesis is that by understanding how complex systems work we can gain insights to better understand and improve the act of building software. By looking through the lens of the sand pile model we'll explore the following:
>
> * what the sand pile model can tell us about software development
> * how software is naturally attracted to its own chaos
> * the impacts on software living perpetually on the edge of chaos
> * how existing software practices can be used to detract software away from chaos
> * what this means not only for our software, but for our teams, and ourselves individually
>
> This thought-provoking perspective will leave you with new ways to think about software. You’ll walk away having learned a little about chaos, complexity, and how they apply to software with a thought-provoking perspective and inspiration for thinking about software in new ways.

## Notes


### @danbernier's notes

(Came in a bit late, sorry.)

Example: adding methods to a class that subclasses Array. Accreting
functionality. Just a wafer-thin bit...

But software isn't linear. And it feeds back into itself - changes you
make today are the base you change tomorrow. A previous change impacts
future changes, like the Game of Life. Illustrations: The Butterfly
Effect, the Lorenz Attractor.  "For want of a nail, the shoe was
lost..." Tiny changes compound on themselves.

*Bak, Tang, Wiesenfeld*

3 guys working on dynamical systems. Microscopic changes can have
macroscopic effects.

Sandpiles: they pile up, until they slide.

*Self-organized criticality*: a property of a system that has a
critical state (point) as an attractor.

Put antother way: systems can only sustain so much stress; a slide
releases some of that stress.

A trigger of _any size_ can cause a large-scale change. Predicting is
hard.

*For software* a critical point is a system that can no longer be
added to as it is. Real software is _more_ interesting. It has _more_
of everything.

Teams often start rapidly, but then get halted quickly - their big
pile of sand has a slide, because it reaches its critical point.

Adding something to the system moves it closer to its critical point,
its edge of chaos. You hit the critical point, slide down, move up,
slide down...you bump against the critical point over & over. This is
misconceived as pragmatic, because, while you're constantly adding
features, you're also moving as slow as possible.

Initially, it requires more effort to avoid the critical point, then
to work towards it.

#### How do we keep software aways from its critical point?

Falling in love with Simplicity. Loathe (unnecessary) complexity.

Values over Practices

Refactoring doesn't just mean moving a method from a controller to a
model - you have to identify concepts & abstractions.

Values are at the core of your practices, and impact your practices.

As you add anything on, you're making your app more complicated, more
complex, and moving it towards its critical point.

If we can afford ourselves the humility to accept it may help us be
better served as curators and caretakers of our systems, much like a
gardener with their garden.

### From @james\_gary

* Past habits often predict future behavior
* If you do something today, you'll probably do it tomorrow
* If you don't do something today, you probably won't do it tomorrow
* Thought software is unpredictable, programmers are generally pretty predictable
* We fall into a rhythm, like a pendulum
* Feedback
  * Gut feel
  * Peer review
  * Tests
  * Metrics
  * Etc
  * So much feedback, we tend to ignore a lot of it
* Broken windows; momentum carries
* Software is not linear
* Spikes
* Software feds back into itself ( Sx = ...(Sx-1) )
* Previous change impacts future change (like Conway's Game of Life)
* Butterfly Effect, chaos theory, etc
* Bak-Tang-Wiesenfeld created Sand Pile Model
  * Microscopic changes make macrospopic effect
  * Sand piles up, landslides
  * Self-organized criticality - A property of a system that has a critical state (point) as an attractor
  * In other words, systems can only sustain so much stress
  * Snowflake causing avalanche
  * A trigger of any size can cause large-scale change
* Predicting is hard
* Adding functionality is like dropping a grain of sand
* Adding a feature is like dropping a few grains of sand
* The critical point represents a system that can no longer be added to as-is
* System is crappy
* Dev must stop and clean
* Teams often get caught by starting out at a rapid pace only to be halted not too long thereafter
  * We end up with a tall pile
* The simple act of adding something to the system moves the system closer to its critical point; it's edge of chaos
* After adding a lot offunctionality, cycle between house cleaning and adding some more
* Misconception of Pragmatism: Cycle that feels like it's moving fast, but building towards crappy system
* Initially, it requires more effort to avoid the critical point than to work towards it
* Small apps can get away with this (since they never hit critical point)
* Complex apps build complexity upon complexity
* How do we keep software away from its critical point
  * Fall in love with simplicity
  * Loath (unnecesary) complication
* Listen, feel, respond, learn from feedback
* Values over practices
* If you actively seek ways to exploit your values, practices will come naturally
* Practices are important but values are at the core of your practices, and will impact everything you do
* Values help determine how we drop our grains of sand
* This idea may be hard to swallow
* If we can afford ourselves the humility to accept, it may help us tbe better served as curators and caretakers of our systems, much like a gardener with their garden
* How's the landscape of your software?

## External Links

* [Slides](http://speakerdeck.com/u/zdennis/p/sand-piles-and-software-railsconf-2012)
* [Sand Piles & Software in April PragPub](http://pragprog.com/magazines/2012-04/sand-piles-and-software)
* http://continuousthinking.com
* http://mutuallyhuman.com

## Discussion

* This reminds me quite a bit of the "Abstraction Descant" chapter in "Patterns of Software" (http://dreamsongs.net/Files/PatternsOfSoftware.pdf), by Dick Gabriel. - _@danbernier_
