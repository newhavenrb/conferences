From [[Gogaruco 2012]]

**Presenter:** [[Glenn Vanderburg]]

### Simple
We love simplicity   
We like simple code that does the task we require   
Simpler code and designs are easier to read, extend, change and debug   
Its much harder to come up with simple designs!   

### Binary
We think in black and white   
Our world is binary   
Solutions are right or wrong   
These are the concepts we work with in code   
This biases carries over to other parts of life   

### Complete
We won't solution to completely solve the problem including edge cases   
**Holy grail is Complete && Simple**   
Reaction from a bad programmer: OH NO a special case!    
Reaction from a good programmer: Spots are generalizations of strips!   

### Complex
Sometimes we love complexity   
There is a certain type of complexity which don't have bounds   
We have no hope of pinning down all contexts needed to solve the problem   
Even the best solutions have severe downsides and we must choose a bad solution   
We tend to coil from these complex problems   
If we can't ignore complexity, we pretend...   

### Pretend
We act as if the problem was simple   
We choose a solution as if the problem was simple   

### Talk Goal
Ways we over simplify    
Techniques we can use to not recoil in the face of hard problems and come to sane solutions

### Oversimplification
**Ignoring second-order effects**   
Assuming the system you are trying to change will not push back on you

**We forget secondary benefits**   
We concentrate on one benefit and ignore others   
TDD has several different advantages, but people aren't good with equations with many different outputs   
If you only choose just one benefits of TDD, its not cost effective   
If you remember all the benefits together, its a slam-dunk

**Asking the wrong question**   
"What message should I send?"   
It might become clear you need to write a new class   
Better to assume people have reasons for their dumb decisions and ask the right questions   
"Which kind of engineering are we like?"   
Electrical and Chemical Engineering are more iterative and like Software

**Sucks - Rocks Dichotomy**   
We are so very black or white   
It must be one or the other   
We have a tendency to dismiss a new idea as soon as we find one flaw with it   
However, the new idea doesn't have to be perfect to be good   
TDD is not a proof; its for gaining more confidence in your system   

**Take rhetoric at face value**   
You have adopt all 12 principles of XP to call it XP! (being dogmatic)

**Ignoring context**   
Lots of times, we make snap judgements without including context   
You must include context   

**Giving up**   
We give up and resort to magic   
"We need to find good designers"   
You haven't taken time to understand someone else's objections

### Grasping Complexity
Useful techniques for dealing with complexity so we can make good decisions even in the face of weak evidence

**Incomplete solutions**   
We should seek incomplete solutions and accept them   
Find the 80% solution for 20% effort   
Three simple rules
  1. never eat white foods
  2. never eat in front of the tv
  3. always park in the furthest parking space

Keeping the rules simple means people can remember the rules and stick too them   
Solutions match with the way people think   
Heuristic reasoning is helpful when we need to get to an approximate answer

"GitHub is a globally distributed attack on SHA-1"

Probability of failure is so low, its a good idea to do   
We have to think about how much failure is acceptable

Exploit power law distributions in code (80/20 rule)   
We can find really good solution for common case   
Find suboptimal solution for edge cases

**Think in terms of costs and benefits**   
Is technical debt keeping you from doing stuff? Wrong Question.   
You can still get stuff done, but those solutions are more costly as compared to solutions without technical debt

**Exploit emergent phenomena**   
We have simple flawed rules which back each other up   
Look for small rules which exert themselves at higher scale   
Optimize for a good feedback loop and fix things when they go wrong instead of trying to make sure nothing goes wrong   
Mistakes that get through a small scale have a chance to get cost higher on the scale (see XP slide)

**Deeper analysis**   
Categorize entities   
Rather seeking perfect practices, find flawed ones which back each other up   
Look for simplicity hidden in complexity   
XP can be rearranged from complex to simple (see slides)

**Seek the root of your intuition**   
I can't explain, but this feels wrong   
Intuition builds up through experience   
If you force yourself to understand your intuition, you are a better teacher and able to explain your stance

**Study "wicked problems"**   
(see slides)   
http://kschroeder.com/  
No Stopping rule   
Solutions are better/worse not true/false   
No immediate or ultimate test of solution   
Use techniques for "wicked problems" to solve software problems
















