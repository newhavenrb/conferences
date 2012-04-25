**Presenter:** Nick Quaranto

## Bio

> Programmer at 37signals, Husband, Husky wrangler, RIT Alum, http://rubygems.org Mechanic.

## Abstract

> Heard about the big Basecamp launch this March? Wondering what's new, how it's shaping Rails, and the tech behind it? We're going to go over some the practices and patterns in the new Basecamp's code base and you can learn how to improve your app with them.
>
> Some of what we'll go over:
>
> * Employing concerns to share code across models/controllers
> * Stacker, the CoffeeScript component behind the "page" based layout
> * Why polling for updates still works at scale
> * Client side testing without the hassle
> * Using jbuilder to keep view data out of models
> * Keeping your team's sanity with a single setup script
> * Debugging painful JavaScript performance slowdowns
> * How to keep your app alive even if external dependencies like Redis are down
> * Why tagged request logging and action/controller SQL query logging can make finding bugs easier

## Notes

### From @benjaminoakes

* Who
    * In Buffalo, NY (was in Boston)
    * 37signals
* New version Basecamp
    * Architecture
        * Rails -> databases: [Elastic Search, Redis, MySQL Memcached] services: [Depot, porfolio, Launchpad, Queenbee (where the honey is made; does billing)]
        * "Rainbows" (does polling, related to Unicorn)
        * Only thing you need locally is Rails and MySQL.  They wrote (and use) Pow
            * launchpad + portfolio
    * Testing
        * test/unit, mocha, capybara, qrush/m
        * ...
    * Development setup
        * "All apps need to have reset button"
        * They call it `script/setup`.  (We call it `./configure`, like for a C project, etc.)
    * `module YourConcern; extend ActiveSupport::Concern` pattern (interesting?)
        * Include a bunch of concerns in a controller
        * Adding stuff directly feels gross
        * 50/50 CoffeeScript/Ruby
    * wysihtml5 for rich editors
    * JS
        * jQuery plugins
        * Patterns:
            * extend jQuery: `$.fn.highlight = -> # ...`
    * Stacker
        * Replaces page
        * Incercepts clicks on `<a>`
        * Does `$.ajax`
        * Handles errors
        * based on History.js
        * Hooks
            * `page:*`
    * JS console mastery
        * `console.count('foo')`
        * `warn`, `error`
        * `group`, `groupEnd` (clumping)
        * `profile`, `profileEnd` (profiling even with a name -- goes in "Profiles" tab, looks awesome)
        * `debugger`, `console.trace` (stack trace)
        * `chrome.csi()` how long since page load
    * API Building
        * repo for docs: 37signals/bcx-api
        * rails/jbuilder
            * "view data in the views"
            * vs. ugly `as_json` vs `to_json` dance
            * "public JSON"
        * rails/strong\_parameters: uses `FooController#document_params`
            * It's a controller not a model problem (vs `attr_accessiblei`
            * Status codes belong in controller

## Discussion

* `./configure` vs `script/setup`.  One is a convention outside Ruby projects, the other isn't.  Preference? @benjaminoakes
* `Rails.env` in js via `.coffee.erb`.  Hard to do when asset compiling though, right?  It's always in production.  @benjaminoakes

## External Links

* Slides TODO
* [Pow](http://pow.cx/) - Mac only :(
* Github TODO links
    * qrush/m - Runs tests by line number
    * xing/wysihtml5 - Rich text editor
    * josh/rails-behaviors
    * balupton/History.js - Abstracts history API
    * 37signals/bcx-api - their API docs, Markdown
    * rails/jbuilder - Renders JSON response
    * rails/strong\_parameters - filters parameters ("avoids the GitHub mess")
    * http://httpstatus.es/204
