**Presenter:** Hampton Catlin

## Bio

> Hampton Catlin (@hcatlin) is the inventor of Sass, a CSS generating language, and the Haml markup language.
> He is currently the Director of Engineering at Moovweb, a (bootstrapped!) startup focusing on transforming how we interact with the web. He is the original creator of Wikipedia Mobile (m.wikipedia.org) and is also the creator of several successful iPhone applications that have been downloaded by over 3 million people.

## Abstract

> A glimpse of some of the features coming to Sass in the pending 3.2 release. Plus, a huge announcement about the project that's been months in the making as we have secretly toiled away on something that we think will be awesome. Hear it first at this talk. Repositories will be made public when the talk is over. Shh! Its a secret!

## Summary

* [libsass](https://github.com/hcatlin/libsass) and its Ruby wrapper [SassC](http://github.com/hcatlin/sassc)

## Notes

### @danbernier's notes

.scss is the extension to Sass files. Glad _that's_ cleared up.

Pros of Sass: Mature, Advanced; units, functions, selector inheritance.

Cons:
* Accessibility (for designers)
* Speed: 30 seconds to compile some projects

So: libsass: Sass, in C
* C interface, C++ internals
* Statically linkable
* Small(ish): ~600k, compiled on a mac
* Simple interface
* Fast
* support up to Sass 3.1

Covers:
* mixins, variables, most unit conversions (like color math? talk to him)
* simple interpolation, most functions

Coming up:
* Color functions
* Control Directives @if
* Callback API

SassC executable around libsass
Then: SassRuby, SassPython, SassJS wrappers around libsass
(Did he say SassGo?)

What can you do?
* Help with SassRuby
* Color functions!
* Evangelize
* RT @hcatlin

Discount code: RailsConfCatlinSASS2012

## Discussion

* Hampton Caitlin typically announces new things at RailsConf.  I assume that `libsass` is the big announcement this time?  (I wasn't in the talk.)  It would make sense because having a C version could drive adoption of Sass in general.  - _benjaminoakes_

## External Links

* http://github.com/hcatlin/libsass
* http://github.com/hcatlin/sassc
* http://github.com/hcatlin/sassruby
* Notes elsewhere
    * [TheRailsView](http://www.therailsview.com/2012/04/railsconf-2012-the-future-of-sass/)