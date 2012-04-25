**Presenter:** Sarah Mei

## Bio

> Sarah Mei is a Ruby and JavaScript developer from San Francisco. She has been programming since the days when Java was the new hotness, and for the last two years she's been at Pivotal Labs. She's on the core team for Diaspora and Pie, and contributes code to many other open source projects. She also co-founded RailsBridge, a non-profit that has taught more than 600 people how to program in the last three years.

## Abstract

> Backbone.js is a flexible, lightweight tool for structuring the JavaScript in a modern web application. It goes great with Rails! But beware - "flexible and lightweight" are code words for "you build your own plumbing." Backbone is new enough that we haven't established strong patterns for that plumbing yet, so different Backbone codebases look very different, and when you're new to the idea of structuring your JavaScript, it can be tough to tell where the win is.
>
> So in this talk I'll demystify Backbone. I'll show several very different ways I've used it on real Rails apps. You'll get a feel for the circumstances when Backbone makes sense, and moreover, when each of the different approaches to Backbone make sense.

## Notes

* Rubyists may not be so hot at js
* Backbone is _not_ MVC (different definition than Rails)
* Set of cubbies to put different stuff
* MTV: Models, Templates, Views
* Pre-Backbone
  * Page objects are pretty cool, but still devolves into spaghetti code
  * Client-side rendering (mustache, handlebars) still demands a lot, like tracking events
* Backbone gives you
  * Model mirroring
  * Views that handle events
    * and maybe DOM
* Patterns 1: Greenfield
  * Rails === API
  * Pivotal builds server that serves just json
  * Backbone does all the html
  * (lots of code, look at posted slides)
  * Easy to create mobile app
* Patterns 2: Backbone as Frosting
  * Rails, with just some Backbone on top
  * Faster to implement if you're already familiar with Rails
* Check out alternatives if you're starting a Greenfield app
* Backbone's sweet spot is when you're converting an exisitng rails app to have more client side behavior

## External Links

* [Slides (with notes)](http://speakerdeck.com/u/sarahmei/p/using-backbonejs-with-rails)
