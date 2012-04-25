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

## External Links

* [Pow](http://pow.cx/) - Mac only :(
* Github TODO links
    * qrush/m Runs tests by line number
