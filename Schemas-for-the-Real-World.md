From [[Gogaruco 2012]]

**Presenter:** [[Carina C. Zona]]

## Memorable Quotes

<blockquote class="twitter-tweet"><p>"Assuming we know who users are keeps us from learning who they really are." -Fantastic talk by @<a href="https://twitter.com/cczona">cczona</a>. <a href="https://twitter.com/search/%23gogaruco">#gogaruco</a></p>&mdash; Sarah Mei (@sarahmei) <a href="https://twitter.com/sarahmei/status/247053729478627329" data-datetime="2012-09-15T19:26:13+00:00">September 15, 2012</a></blockquote>

## Notes from @simeonwillbanks

### Intro
Relationships are really hard!   
Facebook had to double its options   
G+ uses the same list, but removed a few

Allowing users to identify their relationships is for enhancing UX

### Three core problems

1. Deeply personal stuff about humans can be reduced to a list
2. These lists should exists and be created
3. The first two can be solved by adding more items

This happens when we throw more labels at the relationship is an indicator that the schema is wrong!

Relational databases cant model real life, a graph database is needed

How do we bring modern relationships into a database?

### Approaches

1. Get schemas into alignment
  * Mental schema which represents some aspect of the world
    * UX is a manifestation of mental schemas
  * Database schema
2. (see slides)

What benefit will the user notice?   
You have to evaluate trade-offs

Evaluating from the user perspective gives us focus

(see slides for good examples of UX)

Schemas trust in users allowed users to ask for more freedom   
The user can make their profile exactly as they want it

**Data doesn't have to be for analysis, it can be for shear expressiveness**

You should avoid gender pronouns! Its too hard. (see slides)

### Vision of good codebase
We want structure, order, relational and predictable   
Nice easy clean analytics to make good decisions   

What we get is tons of conditions and exceptions   
We're never going to stop making lists, so all assumptions will be invalidated   
(see slides)

### Balance between approaches
We can strike middle ground through guided-response or auto-suggest   
Structure can be had through minimal-suggest    
 * If they don't type something from list, you can open the field, opt-out
 * Data quality improves when user is able to choose what and when they share

**Analytics run from bad data are bullshit since we forced the user to lie (restrictive options)**

Make stuff flexible upfront and decide on validations and all that code later   
Allow NULL is making a statement of intent
`t.string "gender", null: true`

### Takeaways
1. Modeling real world is hard and OK
2. Assuming we know who the users are doesn't allow us to learn about the users (no constraints at first)
3. More freedom won't kill us
  
Data quality, specificity and loyalty are foundations for great UX

**NO WAY TO MAKE EVERYONE HAPPY!**    
The earlier you do this, the more polarization happens

## External Links

* [Slides](https://speakerdeck.com/u/cczona/p/gogaruco-2012-v1)
