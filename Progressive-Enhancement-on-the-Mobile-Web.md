**Presenter:** John Bender

## Bio

> John Bender is the co-creator of Vagrant, a jQuery Mobile contributor, and a recovering polygot. During the day he works full-time on jQuery Mobile at Adobe and otherwise spends his time hacking on open source. John shares his thoughts at http://johnbender.us and as @johnbender on Twitter.

## Abstract

> Progressive Enhancement isn't important on the mobile web because it's all Webkit right? Not so fast. Even among Webkit implementations events, css, and performance vary widely. We'll talk about the darker corners of the mobile web and show how jQuery Mobile can help you build Rails applications that are reliable, accessible, and support more devices.

## Notes

### From @benjaminoakes

* Mobile web development is difficult to do on your own
* He prefers jQuery Mobile
* He works for Adobe working on jQuery Mobile, actually
* He used to contribute to [Vagrant](http://vagrantup.com/)
* Browser Support: lots (see http://jquerymobile.com/gbs)
* Strong community:
    * 6000+ watchers on GitHub, most bugs seem to be CSS
    * 8+ books
* Progressive Enhancement
    * Providing features on top of other features when they are supported
    * Especially important on mobile
    * Examples:
        * Uses hash for history
            * Layered
            * Sucks a little because of JovaScript reliance
        * Toolbars (absolute -> fixed)
            * Browser support was poor until recently
* Webkit makes things better...
    * ...but you can't rely on it being the only choice
        * Opera
        * Windows Phone
    * Think twice about doing it yourself
    * There are a ton of devices, getting bigger faster
* Lots of bugs in how history is implemented
* Orientation support isn't great
    * Don't know when it happens (when viewport resizes?)
* Tap vs click
    * Two events: tap (for scrolling too) -> click
    * Hard to tell where the click is supposed to go
* Android
    * "The worst of all the browsers" for him
    * "Android is the new IE"
    * 2.2 and 2.3.3 are 80% of Androids (wishes for more 4.0)
    * Little rendering artifcats with rounded corners / drop shadows
    * Had to use `&nbsp;` to fix a bug only on 2.2
    * Back button support is important for Android
* Transitions
    * Work well in toy examples
* Rails
    * Recommends `<meta name="viewport" ...>` approach
    * Recommends CDN especially for mobile
    * Allows namespacing of `data-` attributes within the `mobileinit` hook
    * In general:  use `on` instead of `bind`
* Debugging
    * weinre and Adobe Shadow
        * Work using the Chrome debugger

* The situation is getting better
* Chrome any better?  Yes, but could be better.
* IE Mobile (IE9-based one is better)

## External Links

* [Slides](http://johnbender.github.com/presentation-jqm-rails)
* [His GitHub](http://github.com/johnbender)
* [His Tiwtter](http://twitter.com/johnbender)
* [His Blog](http://johnbender.us)
