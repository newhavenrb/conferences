These are all of the notes [James Gary](http://github.com/jamesgary) took for [RailsConf 2013](http://railsconf.com/2013/schedule) in one big page. If others start contributing, it's probably best to split them up into individual pages :)

## Testing HTTP APIs in Ruby
### @shaiguitar

- Everything as a service
- Test it!
- Problem statement: Testing a server/client HTTP API
- Good plan:
  - Create API
  - Build client lib that can be used in confusmer apps
  - Make it easy for consumer apps to test w/ our client library
- How?

### Isolation
- Test server, code server, test client, code client
- Have to use FakeWeb to mimic the server
  - Not testing the whole thing
  - No integration
  - non-representative tests

### Sandboxes
- Running server that clients can test against
- Server dev the same
- Test client against real server
- If server API changes, test fail (good!)
- But...
- Setting up sandbox takes time
- Server API changes require releases to sandbox
- Real requests to sandbox slow down client tests
- Unique data conflicts
- Complex tests setup/teardown
- No fixtures shipped with client
- Still better than Isolation!

### Fake Servers
- Create a fake server to use in the client
- Ship a fake_server.rb in the client
- Mirror of API from the outside, doesn't do all internal stuff

```ruby
module MyAPI
  class FakeServer < Sinatra::Base
  end
end
```

- Fake server mimics API
- Slim code, Keep it simple
- Fast/in-memory
- Ensure low dependencies
- Run client tests against both real AND fake server
  - Local dev runs against just fake, CI runs against real (or both)
- Fake is validated by 'real' run mode
- Full integration
- Local dev of client is quick
- (fog & zendesk can do `@client.mock!`)

- (Look up github.com/lanej/cistern)

- More steps for client in making server code changes (mostly for client library developer)

### Mapper style
- Share _more_ code!
- Consolidate fake + real into one repo
- Only EngineYard does this
- Create a repo to hol
- Mappers in both API repos which maps between fake/real
- On rack you can mount shared API definitions together
- `mount RealOrFake::Server, :at => 'api'`
- Consumer apps using lib use fake mapper
- Still have full integration
- Less duplication of API definition code
- Specific lib dependencies (Rack and Faraday)
- Must be familiar w/ the concepts, it can be hard to maintain and enhance

### Conclusions
- This bubble is all about APIs
- Consider using client to test server (sensical to couple server/client)
- Validated fake API is great for local client dev

### Questions/Comments
- VCR could come in handy (use cached response locally, make fresh requests on CI)


## Object-Oriented Lessons for a Service-Oriented World
### Chris Kelly (@amateurhuman)
- Works for New Relic as Happiness Engineer
- These aren't hard principles, mostly ideas for now
- Monorail - Monolithic Rails App
- Network-based application software instead of SOA
- (not necessarily building 'service')
- Monorail (which is a mess) <-> Cache <-> Database
- Your app is a special snowflake that breaks every time something changes.
  - Apt metaphor: Crystaline architecture shatters when a small thing changes
  - Lots of dependencies & coupling
- Object: mostly behavior, some state
- Passing messages back and forth
- We want something more modular: Outside world <-> Behavior <-> State
  - Instead of OW <-> Behavior AND OW <-> State
- We're talking about REST when we talk about http apps as objects
- Lotsa good OO principles
  - Single Responsibility
    - Do the smallest thing possible, and nothing more.
    - Cohesive: everything it does should be related to its purpose
  - DRY
    - Where does knowledge exist?
  - Depend on behavior, not state/data
  - Dependency Inversion
  - Law of Demeter
  - Dependency Injection
- __Cache is King__
- In OO, classes are nouns, and our messages are often verbs
- HTTP has CRUDdy verbs
- But if we stick to those, we're stuck to just those handful of HTTP actions
- _What about hypermedia?_
- It's a series of constraints built on top of REST
- This ain't your Rails' REST
- Hypermedia combines Media Type and link relations

- (Examples...)
  - Contains behavior (links point to self, next, find) and state (\_embedded has the data AND more links)
- See github's hypermedia...
- The Good: Link relations are already appearing in media types
- The Bad: You can implement custom media types
- The Ugly: The necessary HTTP verb is a missing
- Hypermedia is like self-documenting API, no need to worry about versioning
- It's a behaviorial API
- NOTE TO SELF: Look into this shit

## Incremental Design
### Rebecca Miller-Webster and Savannah Wolf

- Rebecca: Developer, Savannah: Designer

- How do you make design changes?
- Big redesigns are often long and frustrating
- Designers throw the design over the wall
- Developers either are confused by it, or 'screw it up'
- Redesigning page by page can lead to technical debt, and is awkward
- Solution: __Incremental Design__
- What is ID?
  - Same Agile principles as SW
  - Tiny deployable design changes
  - It creates a conversation between design and development
- Product challenges:
  - Two product models (single/couple dating parts of HowAboutWe)
  - Aggressive Timelines
  - Split testing metrids,
  - Make great design
- Small changes can be big pains (moving sidebar breaks mobile)
  - Better to find those pain points earlier than later
- Have reusable components that can be used anywhere
- It's okay to release imperfect design, since you're improving incrementally
- Fry the bigger fish first
- Design Team: get request, start requirements, and as soon as wireframes form:
  - Ask devs is this possible?
  - And is this possible in this timeline?
  - Hash out tweaks to find out how to make it easier
  - Then pass it off
- Devs incrementally apply changes, constantly check in w/ design
  - 5 minutes or less conversations
  - The more conversations you have, the faster they become
  - Builds trust
- Techniques for design process
  - Align yourself w/ developers
  - Springs/Reviews/Retros work for designers too
- Techniques for development process
  - Get strict about your styles
  - Changes better be worth it, since devs will fight against it naturally
  - Style guide available for devs and designers
  - Has fonts, colors, grids, etc
  - PSD style guides are never up to date
  - Keep it on the web so it's living
  - Code style guide exists too (on github)
  - Have a conversation if you want to deviate/add anything
- Markup is about content.
  - Drop classes when you can
- Look at your CSS as code
  - Apply good clean coding principles to CSS
  - Variables are your friend
  - Variable names should represent their meaning, not what they actually are
    - i.e. `$skinnyUnit` vs `$22pxWidth`
  - Scope your variables
  - Use mixins (usually prefereable over extends)
    - Highly reusable
- Get logic out of your views
- Generate classes depending on state of object
  - This works for copy and html attrs too
  - View tests are much easier
- Encapsulate repetition into partials
- Big (unattainable goal): Can all design changes happen in CSS?
  - Markup is the copy
  - Models are the logic
  - CSS ought to be all the design
- Challenges: Mostly emotional
  - Devs think that some changes are stupid
  - Designers think that what devs make is ugly
  - Compromise!
  - Be a part of the process
- Designers AND Developers, not Designers VS Developers
- Also creates a conversation between you and your users
  - Users see their money being applied to visible changes
  - Big changes are bad (see Facebook)

## Humanity on Rails
### Daniel Azuma

- What is 'living'?
- RailsBridge: Org to increase diversity in tech
- Diversity's a big issue
- How do we attract more minorities?
- Yahoo recently canned their remote working program
- What do we make of all of this?
- Daniel got laid off, went back to school to study theology at Regent
- Also researched technology, met w/ pastors and engineers
- Long history of philosophy of technology
  - Tech was tied to art, craftsmanship, and relgious ponderings
  - Over time, it changed
  - Europe secularized, industrial revolution
  - Arts focused on beauty/aesthetics, tech focused on power
  - Jacques Ellul (1912-1994) wrote The Technological Society
    - Technology is all about efficiency
    - Almost Darwinian process of technology self-improving
  - Martin Heidegger (1889-1976) wrote The Question Concerning Technology
    - Tech is a way of perceiving the world
    - What do we see when we see nature?
      - Untamed beauty? Or untapped resources?
      - Reality is no longer defined by what it is, but how we can use it
  - Albert Borgmann (1937-) wrote Technology and the Character of Contemporary Life
    - The Device Paradigm
      - A device is a way of perceiving (more cultural than technological)
      - Example: CD Player
        - What is provided by the device: Commodity (easy, convenient, highly accessible music from CD player)
        - What is the thing actually is: Mechanism (inner workings are more concealed)
        - Commodity is convenient, and mechanism is hidden
      - This is encapsulation!
        - Inteface = commodity (*.h), implemntation = mechanism (*.c)
- Most of web business is about counting eyeballs
  - We focus on metrics (convenient/available), and the people are ignored (concealed)
- This is a repeating pattern
- Now we ask people: "How are _you_ useful?"
- People become agents of technology
- We are challenged to challenge nature
- Daniel hates Twitter
  - It's a step backwards in communication
    - Ignores details, nuances, depth
  - But still forced to use twitter because the community is on Twitter
  - To promote, be available for support, etc, have to be on Twitter
  - Tech is now dictating what Daniel can and cannot do
- Borgmann: Tech is no longer a choice. Tech is the basis for choices
- Andrew Feenberg (1943-)
- Samuel Florman (1925-)
- Lots of writings!

- Does technology have value?
- Does technology have values?
- Is there a meta-narrative of tech?
- You can critique the usage of tech, but you can't critique the ethics/personality of tech (source code is neutral)
- We critique at the ends of tech, but not the means
- If technology is value-neutral, then the ends justify the means
- Technology itself now makes a moral statement
- Tech is not value-neutral in of itself
- It values convenience, efficiency, power, control
- It devalues engagement, aesthetic, meaning, commmunity
- If tech has personlity, that'll affect the way we relate/use tech
- If tech has culture, that means it might have intrinsic biases, it could priviledge certain groups
- Not saying tech excludes others
- Not saying this is just the way it is
- We want to improve the status quo and diversity
- If tech has a personality, we have to pay attention to it
- If there is a bias inherent in what we do as engineers, then we tend to take it for granted.
- We can't afford to have those biases hidden and unchallenged
- If us engineers can't figure it out, who can?
- The good news
  - Rails is a great tech
  - Rails is _opinionated_
  - Has social values
  - Transparent
  - Rails invites us to create dialogue and engage
  - Open source turns around the Device Paradigm
    - Implementation is open
    - Engage w/ implemntation
    - Success of OSS is dependent on engagement of contributors
- The Technologist's Calling
  - To seek to understand tech
  - To learn to live wel with tech
  - To teach the worled about tech
- Getting started w/ Humanity on Rails: http://daniel-azuma.com/railsconf2013

## Michael Lopp Keynote @rands
## Stables and Volatiles

- Humans are bad at making decisions (see eletrical outlets)
- Why no one single plug?
- Look at Apple's plugs

- You're in a hurry
- Your gig has an expiration date
  - Switch jobs about every 3 years
  - Nothing left to solve, so we get bored
- 1.0 is going to kill you
  - It didn't exist yet
  - You have to make every decision
- 40 years ago: Some asshole pissed off some people, they took off and make:
- Egalitarian Workspace
  - Flat organization
  - Speed
  - Collaboration
  - Results orientation
- Engineers just care about value creation
- Only 1/10 startups succeed
- There's a spectrum of builders
- Archetypes
  - Stable
    - Happily work with directions, schedules, etc
    - Play nicely w/ others
    - No drama
    - Calmly assess risk
    - Mitigate risk
    - Generates a lot of process since process creates predictability and measurability
    - Salience in decision making
      - (Toaster experiement)
      - People tend to choose based on your most recently learned data
  - Volatiles
    - Define strategy, not follow it
    - Can't conceive of failing
    - Thrill in risk
    - Often don't build predictable thing, but they build a lot of things
    - Often only reliable if its in their best interest
    - Prefer to work in small, autonomous teams
    - They couldn't care less how you feel
    - Salience in decision making
      - (Toaster experiement)
      - Volatiles choose FLYING TOASTERS (After Dark screensaver)
- These folks hate each other, with good reason
- Volatiles make absurd pitches, do it anyway, and (sometimes) skyrocket
- Volatiles become Stables
  - New Volatiles piss off original Volatiles, who become Stables
  - So either new/old Volatiles leave to go be volatile elsewhere
  - __This is how companies die__
    - Oracle, IBM, HP, etc
- Do you want to coast and die, or disrupt?

- Back to lotsa plugs
  - Apple has a history of throwing things away
  - Trashing iPod to release iPod nano?
    - It's more important to disrupt and stay ahead of the competition
  - Apple doesn't want to become Stable

- You need both Stables and Volatiles on your team
- Stables remind you of reality. They give you predictability.
- Volatiles reminds you nothing lasts. They replace everything boring.
- Build an appreciation of the other side of the fence.
- Throw stuff away that you cherish.
- Distribute blank slates
- Equal representation of - and investment in - S and V
- Only Stables: build a lot of products, but its uninspired.
- Only Volatiles: build a lot of stuff, but nothing is finished
- Stagnation = Death
- Humans are bad at decisions individually
- Build a world where S&V can thrive
- Need more flying toasters!

## Rails vs. The Client
### Noel Rappin (@noelrap)

- Problem: Want users to have "rich client exp" (even though clients don't know what that means)
- @dhh and @wycats offer different opinions (document vs json api)
- But @noelrap just wants to write an e-commerce site
- We tend to split stuff up into client stuff and server stuff between the user and data
- @dhh says that the focus is on the server. The app lives on the server
- @wycats says that the client is the focus, and the server just does whatever the client can't do (i.e. validation, persistence)
- Where does the heart of your application live?

#### Complexity
- Various definitions of simplicity:
  - being able to deal with components separately
  - using simple structures
  - consistency

- Server side can be simple, but has three distinct modes (HTML, JS, JSON)
- Client side has generally one mode of interaction, but business logic can be duplicated
- It's not clear that one side or the other requires less code

#### Speed
- Both sides claim speed
- Server side interaction is proportional to user clicks
- Client side interaction is proportional to new data requirements

- Server style is optimized for least disruption to Rails
- Client style is optimized for simplicity of server logic

Questions to ask to decide where to place your emphasis:
- Is the representation of your data stable?
- Is interaction with the server primarily notification?
- Do client components interact?
- What do you already have/know?
- Will a hybrid approach work?

#### Takeaways
- There's no excuse for re-requesting assets
- It'd help if the JS frameworks were more polished

## The Magic Tricks of Testing
### Sandi Metz

- Many people say "I hate my tests"
 - They kill your productivity when they're slow
 - A little change can break your tests (even if they shouldn't)
 - They're expensive
 - They are misery incarnate
- Just delete some tests
  - You may have too many tests testing the wrong tests

- Unit Tests goals (not mentioning integration/end-to-end tests)
  - Thorough
  - Stable
  - Fast
  - Few (must be shortest possible proof)
- Focus on messages
- Objects are simple-minded black boxes (imagine a space capsule)
- The object under test receives incoming messages, then sends outgoing messages
  - Messages can be sent from itself to itself, but let's ignore them
- Query messages return something and change nothing
- Command messages return nothing, and changes something
- We conflate commands and queries at your peril
- Hidden side effects are the bane of programmers

#### 6 types of messages (Query/Command X Incoming/Outgoing/Sent-to-self)
- Incoming query messages
  - Wheel#diameter
  - Assert the value sent back
  - Test the interface, not the implementation
- Incoming command messages
  - Gear#set_cog
  - Send the message, then assert the direct public side effect
- Receiver of incoming message has sole responsibility for asserting the result / side affects
- Don't test private methods
  - It adds no safety, yet breaks when implementation changes
- Outgoing query messages
  - (Same rules as 'Sent to Self')
  - Do not test outoging query messages (as long as there are no visible sie affects)
- Outgoing command message
  - Might assert the side effect (such as the state of the db)
    - BUT this creates a dependency on a distant side effect
    - This is an integration test
  - Instead, inject a mock that expects a message
    - This depends on the interface and message passings
- Caveat: Break a rule if it saves $$$ during development

- BUT aren't they fragile?
- Honor the contract
  - Ensure test doubles stay in sync with the API
- There's plenty of ways to use mocks/stubs that aren'te fragile
  - bogus, quacky, rspec-fire, .and_call_original

- Be a minimalist
- Get proof enough
- Use good judgement, so you can break them when you need to
- Don't test more than once
- Test the interface
- Trust collaborators
- Insist on simplicity
- Practice! So one day you can love your tests

## From Rails to the web server to client to browser
### David Padilla @dabit

- Life of a request
  - Browser creates request
  - Sends it to webserver (Unicorn)
  - Sends it to Rails
  - Sends it to spaghetti code
  - HTML is returned
- Rack's job is to communicate between webservers and frameworks
- Only requirements of Rack app: 
  - A class that responds to `call`, then returns `[http_code, headers, body]`
    - `@app.call(env)`
  - config.ru
    - `require 'app'; run App.new`
- Then call `rackup` on CLI
- PRY
  - You can `cd` into objects
  - `ls` lists all the methods
- Experimenting with #call
  - `Rails::Application#call` is the entry point
  - `show-method call` shows source code
  - Parameter in `call` is `{"REQUEST_METHOD" => "GET", "PATH_INFO" => '/', "RACK.INPUT" => ""}`
  - `response[0] # => 200`
  - `response[1] # => Hash of headers, like 'Content-Length'`
  - `response[2] # => Array of body`
- Web Request from browser to webserver
  - `thin start`
    - This calls `Thin::Server.start('0.0.0', 3000, app)`
    - It can make TcpServers (among other servers, like UnixServer)
    - EventMachine is used to start the server
    - Thin parses request into something Rack can use
    - Zed Shaw wrote the Mongrel parser C extension
  - Unicorn and Puma
    - Doesn't use EventMachine, instead it uses `kgio` (kinda complicated)
    - Eventually calls `@app.call(env)`
- David rolls his own webserver. Cool stuff.
  - Actually not as scary as I thought
- Don't try this at home, but play around and be curious
- [David's Code on github](github.com/dabit/rails-server-browser)

## What Ruby developers can learn from Go
### Lionel Barrow @lionelbarrow

- Go is compiled, garbage collected, strongly typed, OO
- Lower level than Ruby, but still aimed at web
- Go has an agenda
  - Not welcome to a lot of styles of writing code
  - Prodded to write code in a certain way
  - Ruby doesn't have an agenda, but it does have idioms
- What are the design goals here?
  - Declaration different than assignment
  - This eliminates stray variables and dependencies
  - Export values from packages controlled by case
    - Packages are like namespaces
    - This forces you to focus on package API
  - Interface-oriented type system --compile-time duck typing
    - Emphasize polymorphism and composition over inheritance
    - Go doesn't really have inheritance
  - Functions often return multiple values; used for error handling
    - Often returns a value, then 2nd value is the error
    - Do not treat errors as unusal or exceptional
    - Treat them as part of your normal control flow
    - This is pretty controversial
    - So how do you handle errors?
    - If you write middleware, what happens when a lower class raises something? Handle it, or propagate?
- Where does this push us?
  - Small, composable packages that do one thing well
  - Focus is on design of package API
- Questions
  - Who does error handling and how?
  - Where does business logic live?
    - Presentation logic is business logic
    - Many layers of business logic (often called MVC)
    - But Go's packages are so general, it's like they're all libraries
- Can be more verbose, since it explicitly checks for errors
- Probably harder to read output
  - Ruby either works well, or blows up
  - Go seems to work more consistently, but not as clean
- Why learn new languages?
  - You aren't better because you can now write +1 languages
  - You're better because exposure to more examples allows you to generalize your understanding of what you're doing
  - Go back to old languages and appply new paradigms, styles, idioms
  - Understand style of old language
- PL communities and their discontents
  - They have diferent practices, styles, and idioms
  - Difficult to judge practices until fairly deep into languages
    - Be deliberately humble when entering a new community

Working with programming languages is a social act; you are influenced by the way your fellow programmers behave.
Nowhere is this more obvious than in what is considered "idiomatic" code.
Do language designers have idioms in mind when specifying and language?

- Idiomatic code uses language semantics and syntax to get greatest possible leverage on a problem
  - Better definition: It's the comunity standard way of doing something
  - Familiarity perhaps more important than anything else
  - C++ has 66 keywords, so everyone just chooses their favorite 20%, and there's no standard practice
- Why is familiarity important?
  - You have to read and understand not just what the code does, _why_ the code is written the way it is
- Is the goal of a language designer to push programmers into writing good code naturally?
- Minor syntactic decisions in ruby can make code beautiful (no need to sprinkle commas, parens, etc)
- Go try writing some Go, wrap your head around error handling
- Be critical of your language
- Give mad props when it does things well


## How to Talk to Developers
### Ben Orenstein (@r00k)

#### Obey Law of Demeter
- Reduces coupling
- Enables refactoring

Throw something weird at people to keep their attention. __Bored people don't learn anything, so focus on entertainment over being informative.__

#### Write like a newspaper
- Each paragraph depends on the previous one
- So you can end it at any time
- Start with the thesis

#### Vim Tip
- Relative line numbers
- :help, then find the 'Editing Effectively' section

#### Slides are like photographs, live coding is like video

#### Body language
- Don't cross arms or fold hands together (back nor front)
- Bend elbows, be neutral and open

#### People like stories
- Developers especially like embarassing stories about programmers worse than them
- The Daily WTF is popular for a reason

#### Nervousness
- Being nervous is inevitable, so accept it
- Beta blockers will lower your physical response to fight/flight
- Power posing
  - When you act confident, your brain adjusts and you believe it
  - Fake it 'til you make it
  - Do a power pose (arms up) for 2 minutes before a talk
- Look for the 'nodders' in your crowd for a confidence boost

#### Antipatterns in Talks
- Not being crazy in talks
  - Be super passionate
- Double check your slides to make sure people in the back can read it
- Pre-apologizing
  - Hard to avoid
  - Don't set low expectations
- Not leaving any empty space
  - Say "Let's ask some questions"
  - Wait 5 seconds (even though it feels forever)
  - Put hands behind back and lean forward (listening pose)
- Talking first on the last day
- Giving talks in large rooms
  - Request for small rooms so it looks more packed

#### And then... singing!



## Dissecting Ruby with Ruby
### Richard Schneeman (@schneems)

- Get into a library
  - bundle open wicked
  - Make sure you've set your `$EDITOR`
- Forget fancy debuggers
  - All you need is `puts`
  - A rubyist's tracer round: `puts "================="`
- Notation
  - `ClassOrModule#instance_method`
  - `ClassOrModule.class_method`
- Problem: Where is this method being called?
  - `Kernel#caller` gives you the backtrace
  - `puts caller.inspect`
- Problem: Where is this method defined?
  - `Object#method` returns a `Method`
  - `Method#source_location` returns file and line number
  - `User.last.method(:github_url).source_location`
  - Great for when you grep for a method and see it defined in a bunch of place
- If you see `super` and want to see what it'll do...
  - You can use `self.class.ancestors` to see where it'll get called
    - But that can return a crapload of ancestors
  - `User.instance_method(:github_url).source_location` same as above, but for an instance method

```ruby
self.class.ancestors.each do |klass|
  next unless klass.method_defined?(:method_we_are_looking_for)
  puts klass.instance_method(:method_we_are_looking_for).source_location
end
```

- Keep following the source by applying these tools
- For developing OSS:
  - Open an issue
  - Reproduce the bug
  - Attempt a fix
  - At least raise awareness
- Find the right prbolem, and the solution becomes obvious(ish)
- Other fun tools:
  - `Object#methods`
  - `Module#instance_methods`
- Slides are [here!!!](https://speakerdeck.com/schneems/dissecting-ruby-with-ruby)
- Go from bug reporter to bug fixer!