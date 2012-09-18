# Cruft and Technical Debt: A Long View
## Yehuda Katz
@wycats
https://speakerdeck.com/u/wycats

## Intro
Satisfaction goes through a steep decline overtime
Sandi told you how to contain the mess
Katz will tell you how to clean it up

## Assumption mismatch
Gap between assumptions and reality presumes more and more development time
Technical debt is taken on purpose and you imagine you'll pay it down
Unlike technical debt, assumption mismatch you can't be eliminated, you have to plan for it

## Open Source
Good examples of assumption mismatch
bit.ly/harder-than-it-looks
Assumption creep up on you and gaps build up over time
Code becomes obsolete
Assumption gap grows but relief doesn't come immediately
We have to do it ourselves, but this will slowly drift

 * jQuery DOM Readiness
 * Rails security
 * Ember data bindings

*Assumptions are underlying every decision -- when these assumptions go out of style, you become unhappy with your code*

## Unix Philosophy
"You can avoid all software problems but writing programs which do one thing and do one thing well"
This misses the mark because this moves the complexity to rapidly evolving public APIs
No matter how hard we try, we get the public APIs wrong
Straw men (sham) objection to Unix Philosophy
In other words, you force problem to the user, place an integration tax on user
The Unix Philosophy requires a stable and well understood public API and interface

*It is super important to make your way to stability in the early stages of a project!*

## Supply Chains
_...Supply chain management_

When we first built cars, vertical integration was the chosen method
Over time, vertical integration gives way to integrated systems
This means we ended up with more stable and reliable supply chain

Every link in the diagram represents a transaction cost (see slide which looks like a pentagon)
Overtime, a lot of these connections fade away -- transaction costs become must cheaper
The solution becomes clear!

One of the main points: Integration gets cheaper, but it doesn't always get cheaper!
Because of this, you spend so much time building standards which don't reduce transaction costs

Rails was a vertically integrated supply chain
Why was this the case? Why did we not have Rack?
Answer: the cost to define Rack (standard) was high and there wasn't a marketplace for the standard
Once little guys come along like sinatra and merb, standards emerge so we don't repeat ourselves

Now we have a ton of standards!
Now we have other integration costs

Who pays the integration costs?
In a good world, the costs are spread out among a bunch of users 

## What does this mean for software?
*Cruft is inevitable because you don't know enough about your product*
The real world is messy
You have so many assumptions about platforms, product timeline, user interactions

Solutions you implement are often ugly
Cruft you are building becomes obsolete over time but reflects the cruftiness of the underlying problem

People react to cruft with defensiveness
Eventually, (years and years) cruft becomes received wisdom

Good case: remove the cruft, test failure, you revert (received wisdom)
Bad case: remove the cruft, tests passed, deploy, still breaks, revert
Code builds an immunity "Don't touch that code!" "Its probably there for a reason"

Remember, over time, assumptions change! Code is there for assumption which is no longer relevant

If we need to support something old, the assumption gap will not close
When something which is old for sure, you do analysis of codebase and take a hard look at the assumptions to determine cost of removing cruft
Wins can be gained by readjusting assumptions and starting assumptions from scratch

What is the life cycle of a project? (see slide)

What is a better life cycle? 
*Track your cruft!!!*
When you make an assumption, you should write down the assumption
All assumptions should be visible to the entire team
Re-evaluate assumptions periodically

## What to do?
1. Keep track of edge cases and cruft
2. ...and their impact on architecture
3. (see slide)
4. Make choices more intentional

QUESTIONS
Can tests log cruft?
NO! Assumptions must be documented in their own place
Two sets of assumptions
  1. IE6 DOM issues, so write code
  2. Our user base is X


*If you dont know the answer as to why something is there, you should
never say don't touch it. You should reevaluate the assumption.*







































