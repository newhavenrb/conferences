**Presenter:** Jeff Dwyer

## Bio

> Jeff Dwyer is a Sr Software Engineer at PatientsLikeMe. He's the author of the book Pro Web 2.0 with GWT and he will buy you a drink if you tell him you've read it. Even if you're lying. Once upon a time he taught GWT at conferences from Las Vegas to Prague. If you delayed your flight from Java to Ruby because you were enthralled by one of these talks he will buy you two drinks. Jeff is a father of two and lives in Hanover, NH.

## Abstract

> I regularly write code that does something great but is slow as a dog. Denormalizing / pre-computing / backgrounding are all fine, but they're all an investment and they leave tentacles all through the code. I want to be able to try out slow but very useful code in my app without the friction of performance concerns, but also without worrying that my ops engineer is going to kill me in my sleep.
>
> Wouldn't it be nice to add one line to our models that takes care of caching, cache keys, backgrounding, dog-piling, and cache warming? Oh, and it should give the UI clear consistent hooks so that it's clear whether the data is ready so the UI can render a spinner or disable a feature until the computation is complete.
>
> We'll take a look at a series of techniques that we use at PatientsLikeMe to allow us to safely and quickly put some very expensive queries on the website so that we can evaluate whether it's worthwhile to create longer term solutions. The solution we've come up with is a lot of gloss over memcache and resque that makes it feel like we can memoize any method in our application and lets us focus on the goals of the algorithms rather than their performance and architecture.
>
> This talk will feature: memcache, resque, a bit of metaprogramming, a look at caching in the wild and code that fixes some usual problems, and a fairly epic SQL query with some nice Postgres features you should know about.
>
> You should come if: you want to take a look at some practical solutions that we use in production to be able to roll out computationally expensive features.

## Notes

* This is a file generated from the RailsConf JSON.  Please remove this notice when adding notes.
* If you're interested in the generator code, see the "generator" directory.
* This layout is just a suggestion.
* Bullet points might work well.  Paragraphs too.  Up to you.  :)

## External Links

* [Slides](http://www.slideshare.net/jdwyah/patella-railsconf-2012)
