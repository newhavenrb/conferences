**Presenter:** David Heinemeier Hansson

## Abstract

> David Heinemeier Hansson is a partner at <a href="http://37signals.com/">37signals</a>, a privately-held Chicago-based company committed to building the best web-based tools possible with the least number of features necessary.
>
> 37signals' products include Basecamp, Highrise, Backpack, Campfire, Ta-da List, and Writeboard. 37signals' products do less than the competition -- intentionally.
>
> He is also the creator of Ruby on Rails.

## Summary

* Rails is almost 10 years old
* There has been a lot of progress
* Don't be afraid of change
* Don't overreact to change
* Life will change
* Rails will change

## Notes

Theme: Progress

### From @danbernier notes

The march of progress is painful, and sometimes means you have extra
work to do. (See Ruby 1.9, Bundler, Rails 3, Asset pipeline,
coffeescript.) He implies: progress that's hard to make, is good to
make, and he's proud of that. That's not a terribly sound assumption
to start with, but we'll see where he takes it.

Ah: "Not all forward movement is progress." But: since programming is
more measurable, objective (?) (he uses code length as a measure), we
can be sure we're making real progress.

So: why do people approach some new thing curiously, and become
suspicious? When & why does this switch happen?

"A conservative is a liberal who got mugged:" people start curious,
and some Bad Thing happens to them. "Everyone likes the cutting edge,
until they cut themselves." So people become suspicious out of fear:
"This can never happen again!" (He makes a nice connection to the
TSA.)

Getting old makes you afraid of change, because you have something to
lose. In real life, maybe it takes 30 years, but in tech, it's only
3-5 years.

And then: "Won't somebody please think of the newbies?" We don't want
to make Easy-Bake tech for newbies: they have to learn the real thing,
something valuable.

There's an insidious idea that people are (Foo for) Dummies, and that
we can only learn so fast. Learn at your own pace, as fast as you can:
don't let yourself be slowed down. Use cognitive reframing to make
yourself less risk-averse.

DHH cares about tools he can use, so he _builds_ tools he'll use, and
he likes progress. Accept that progress is painful, and it becomes
less painful.

### From @benjaminoakes

* Almost 10 years of Ruby
* Constant progress
* Is all progress good?
    * REST (Rails 1.2) was seen as bad by some: Added `routes.rb`
    * Ruby 1.9: we're not there yet
    * Bundler: some people didn't like it
    * Rails 3: harder upgrade
    * Asset pipeline: cool, but took reorganization
    * CoffeeScript: different than JS, but what does it provide?
* In specific cases, "progress" can be hard to say whether "good" or "bad"
* "The old one was better"
    * e.g., OSX Lion
* Not all forward movement isn't always progress
* Measurements can be subjective and objective
    * Does it make the car go faster?
    * e.g., less code
* Skepticism is OK
* What's your default mode?  Curious or suspicious?
    * When does a switch happen?
    * "A conservative is a liberal who got mugged"
    * Lost data, introduced bugs, took a long time to upgrade...
    * "New stuff!"  -> "Ugh, new stuff..."
    * Customer or boss says "if it ain't broke, don't fix it"
    * Can turn to overreaction
    * Fear
    * Getting older -> like change less
    * Young -> easier to accept change
    * Not everyone keeps those old ideals (old hippies are rare)
    * Turn into "Mr. Mature"
    * Has something to lose
    * Nice things -> instinctively don't want to lose them (e.g. lots of companies using Rails, etc.)
    * Will suck the life and fun out of you
    * 3-5 years: start growing suspicous
    * Not a whole lot of people go back
    * "Loss aversion is the pillar of conservatism" (as a mental frame of mind)
    * "Won't somebody please think of the newbies?"
    * Want to change it into a easy-bake oven
    * A real oven teaches you real skills, even though it's more dangerous
    * Don't be "mister dummy"; you decide the rate at which you learn this stuff
    * People don't like losing stuff, even technology knowledge
    * You can get out of this (hack your brain)
    * Gambling: pretrend you're a trader and this is an investment
    * Prime your brain to be curious; refocus and reframe
* Great products are made by people who use them
    * You care about tools you can use
    * Don't dumb things down; is that what you want?
    * Still doing Rails because he likes it, even after a decade
* Progress is painful
    * You have to throw some of it out
    * Rails 4 will change things **and** break things
    * "I will not fear change, I will not fight progress"
    * "Stay young, stay curious, stay hippie"

## Discussion

* This kind of seems like Suzuki's "Beginner's Mind" concept @benjaminoakes
* What does this mean for the iPad, OS X Mountain Lion, etc. which are simplified ("made more safe")?  Does that mean we'll have people with fewer programming skills?  @benjaminoakes
    * I think this isn't a perfect equivalency, at least in the case of OSX: the basic things are simplified, but the more powerful operations are still available. If you make the 80% of work you do easy and let yourself focus on the 20% that's truly difficult, it strikes me that you'll be able to focus on the actual problems easier. @robyurkowski
* It reminds me of decluttering/minimalizing.  It's hard to get rid of some things, but it can be worth it.  @benjaminoakes

* Dick Gabriel: "Fear of failure is fear of death."
  http://dreamsongs.com/MobSoftware.html

* This is a pretty bland talk: of course we need real tech, and of
course that can be dangerous, but OTOH, of course we need to encourage
& welcome newbies, and it's a balance between the two, and we need to
find the right dial setting.

* @robyurkowski: Particularly irritating to me was the equivalency presented between power and difficulty. 
    * Per DHH's easybake example, the oven is not actually substantially more complicated to use—you still turn a knob, put food in, and take it out when it's done. You do have a depth of other options available to you with an oven, but using an easybake isn't much different from using an oven — it just has a limited instruction set. Just because we have a powerful tool doesn't mean it has to be hard to use or confusing to learn. That's not to say that we should impede progress for this reason, but we have to keep in mind that increasing the complexity of our patterns and utilities will push us in the much-maligned Java direction.
    * It's also worth considering that the more time we waste on answering the same questions again and again, the less time we have to spend focusing on the real problems.