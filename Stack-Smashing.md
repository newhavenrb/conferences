**Presenter:** David Czarnecki

## Bio

> David Czarnecki is a lead engineer at  Agora Games (a part of Major League Gaming), http://www.agoragames.com, a company that specializes in building middleware to power video games, both in-game and on the web. He is the author of 2 books for O'Reilly and had previously been developing exclusively in Java for nearly 15 years. He has been developing in Ruby and Rails since joining Agora Games in 2008 and has been a speaker at conferences like JavaOne, RailsConf and Ruby Midwest. David loves video games, especially the Guitar Hero series and Left 4 Dead.

## Abstract

> "Stack Smashing" refers to an internal project where I took our production Rails application environment down from over 100 virtual machines to 2 physical machines. Our application environment for Major League Gaming consists of 13+ inter-connected applications with millions of users to provide functionality such as single-sign on, online video (both video on demand and UGC), news and live competition information, photo galleries, profiles, and much more. We simply needed a simpler infrastructure in which to develop and deploy our applications. In this talk, we will cover the following:
>
>   * Network topology before and after, as well as the makeup of our virtual and physical machines.
>   * Detailed discussion of Chef recipes, NGINX, HAProxy configurations and updates to standard configurations.
>   * Application and service monitoring and configuration.
>   * Application migration from the old stack to the new stack.
>   * Rails 3 to Rails 3.1 upgrade insights.
>   * Unicorns!
>   * Strategies for service configuration to handle failure.
>   * Offline processing with queueing and queue management.
>   * Simplifying, standardizing and sexy-fying your Capistrano-based deployment tasks into a reusable gem.
>   * Behavior driven infrastructure monitoring and validation.
>   * Adopting an opt-in continuous deployment strategy that is integrated with our continuous integration environment.
>
> This will be a very code and example-focused talk. Come and learn about the ways that you can simplify your existing infrastructure.

## Notes

* This is a file generated from the RailsConf JSON.  Please remove this notice when adding notes.
* If you're interested in the generator code, see the "generator" directory.
* This layout is just a suggestion.
* Bullet points might work well.  Paragraphs too.  Up to you.  :)

## External Links

* [Slides](http://speakerdeck.com/u/czarneckid/p/railsconf-2012-stack-smashing-cornflower-blue)
