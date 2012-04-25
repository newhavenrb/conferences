**Presenter:** Andy Maleh

## Bio

> Andy Maleh is a Software Engineer at Groupon who specializes in user needs analysis and building transformative software that meets ongoing demands. He leads by embracing agile practices and software craftsmanship in the process of perfecting Groupon's deal experience. He joined Groupon via Obtiva, where he served as a Senior Consultant for more than five years. Andy is also the Founder and Lead Developer of the Glimmer open source project for Desktop Development with Ruby.
>
> Andy holds an M.S. in Software Engineering from DePaul University in Chicago and a B.S. in Computer Science from McGill University (Montreal). Outside of Groupon walls, Andy is a drummer in two indie rock bands (Gag Order and Cletus Darby) and travels via Longboard when the Chicago weather permits.

## Abstract

> This talk covers a successful utilization of Rails Engines to share features that cut across the layers of MVC in different Rails 3 projects. Rails Engines thus provide the best of both worlds: improved productivity by reusing MVC code (including assets like Javascript, CSS, and Images) and better flexibility by allowing different applications to customize behavior as needed without reliance on application-dependent conditionals. Rails Engine patterns will be provided to guide developers on how to leverage Rails Engines' reusability and flexibility without sacrificing maintainability.
>
> Outline:
>
> - Basics of Rails Engines
> - Rails Engine Patterns
> - Improved Productivity Tips
> - Summary of Benefits and Trade-Offs
>
> Attendees should walk away with an overview of Rails Engines and guidelines on how to utilize them effectively.

## Notes

* Rewriting features multiple times for multiple sites sucks
* Most of us have experienced the monolithic app problem:
  * Difficult reusing functionality cutting across MVCs & Assets
* Common solution: Fuck it, copy pasta across sub-apps
* Better solution:
  * Break common behavior into Rails Engines
  * Customize Model, Controllers, and Helpers in each proj where needed by reopening classes
  * Customize Views by customizing templates
* What is a Rails Engine
  * Simply a Ruby Gem + MVC Stack Elements
  * Lets apps reuse: MVC / Helpers / Assets / Routes / Initializers, RSpec, Migrations, etc
  * Def: An engine structure is similar to a Rails app having app, config, lib, spec, features, etc
  * lib/engine\_name.rb (read online instructions)
  * lib/engine\_name/engine.rb
  * You can consume it via git repo hosted gemified project
  * Load Order: Typically Rails app files load first before Engine files
  * But you can reverse that (recommended)
* App that uses engine
  * Ruby code customization: MHC behavior can be customized by redefining .rb files in Rails App
  * Customizations get _mixed in_ with files in Engine
  * Keep only common methods in engine, everything else goes to its own app
  * View and asset customization: customizations completely override files in engine
* Engines preferably share the same Ruby version
* Typical dev process
  * 1. Make chagnes in engine, rake, and commit obtaining a new GIT ref
  * 2. Update Gemfile in app with new git ref, run "bundle install" (getting ride of symlink)
  * 3. Rake and commit changes in app
* This may require lots of `bundle install`, which is annoying
* Multiple engine dep can hamper productivity when frequently going back and forth between engines and app
* Symlink instead (see slides for more details)
* Engine gems installed via bundler can be symlinked to allow continuous dev until done with both app and engine
* To avoid namespace clash with MHC, you can define an isolated namespaced engine (may not be issue in internal app)
* Goals
  * Keep engine code agnostic of app customizations
  * Prevent bi-directional coupling to simply reasoning about code
  * Avoid app-dependent conditionals
* Pattern - Common Domain
  * Problem: Multiple rails apps need to share basic domain module including default CRUD and presentation behavior
  * Example: Need to reuse address model & behavior
  * Solution
    * In engine, include basic domain models with their views, CRUD, controllers, and routes
    * In app, define domain model specialized behavior, extra associations, and custom views
    * Can also share routes (use newer Rails way to decouple Rails app)
* Pattern - Expose Helper
  * Problem: Need to customize presentaiton logic for a view in some apps, but keep the same logic in others
  * Solution
    * In engine, extract helper logic that needs customization into its own helper
    * In some apps, define something like `requires\_extended\_address?`
* Pattern - Expose Partial
  * Problem: need to have different customization in one part of the view in multiple apps
  * Solution:
    * In engine, extract view part that needs customization as a partial
    * In app, redefine that partial with customizations
    * Useful when there's not a lot of logic; if there is, do pattern Expose Helper
* Pattern - Extension Point
  * Problem: Multiple apps tneed to contribute data to a view in different places (Eclipse has this issue)
  * Solution
    * In engine, add helper logic that looks up partials a specific ext dir, and based on file name, insert into the right location in the view (e.g. row\_7.html.erb)
    * In app, define these partials wit the right file name and locations
    * (From audience) Using blocks that take a hash to render
* Pattern - Configurable Features
  * Problem: different apps need different features from an engine in different combinations
  * Solution
    * In engine, add logic that looks up config options
    * Each app defines feature
* Rails Engine Costs
  * Overhead in establish a new Rails Engine gem project
  * Continuous switching between projects and engines to get work done
  * Upgrade of ref number in Gemfile
* Rails Engine Benefits
  * Code reuse
  * Better maintaiability
  * Offload common stuff to engine (esp if it takes a long time to run test and isn't changing much)
* Engines vs Services (shades of gray, not black/white)
  * Engines are better when
    * Reusing small MVC features, especially domain independent (eg search map)
    * Preferring to avoiding netwrok and infrastructure overhead over establish a service
    * Wanting to quickly extract and reuse a feature
  * Services are better when:
    * Reusing larger mvc features that depend on domain data
    * Need to consume feature in another programming language or outside the organization boundaries
    * Need to scale up feature performance independently of the application
  * To keep an easier to maintain Agile code base, start simple and then move incremntally towards a more complex architecture

* Example problem: Multiple sites supporting a college search map
* High School Recruiting / Public Profiles / Athlete Recruiting
* Copied over logic, but different presentation
* What is a rails engine: Ruby Gem + MVC stack elements
* Load order and monkeypatching (code in slides)
* Defining common models / views / controllers / helpers to reuse

## External Links

* [Slides](http://www.slideshare.net/AndyMaleh/rails-engine-patterns)

## Discussion

* We use submodules, and run into similar synchronization issues (small hassle) @jamesgary
* I liked the Engine vs Services, good questions to have before building something @jamesgary
* Criticism I heard from some NZ devs was that GEM_PATH (gempath? It was verbal and I'm not sure) would have solved most of the problems dealt with in the presentation via symlinks and repository wrangling. @benwbrum
