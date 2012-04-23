**Presenter:** Charles Abbot

## Bio

> Charles works at COOKPAD, Japan's largest recipe site and Rails shop. He spends most of his daylight hours building reporting, analytic, and payment management systems that millions of loyal users don't actually get to see. When he's not at work graphing bell-curves, forecasting user behavior, and throwing around gut-wrenching terms like "correlation-coefficients" and "confidence intervals"  - he likes to play basketball, prepare his Roomba for the robot uprising, and dote on his newborn daughter. Charles has been using Ruby and Rails since Feb of '06.

## Abstract

> RoR makes an excellent framework for off-the-beaten-path type of projects, like hacking Roombas and other robots. In this presentation, I'll demonstrate how our soon to be robot overlords will be happy when we gift them with RoR and a connection to the internet. The presentation will include working examples and demonstrations of:
>
> - communicating with an Arduino chip via Ruby
> - tethered serial and wireless bluetooth control of a Roomba via Ruby and Arduino
> - two-way communication with our robot friends over the web using Ruby on Rails and popular web services
> - useful applications of robots controlled over the web
> - 3 RoRoR pitfalls to watch-out for
> - live performance of "Chiron Beta Prime" by Jonathan Coulton\*
>
> The presentation will close with an argument for why hacking on fun, often eccentric, projects in your spare time is essential for staying motivated, habitual improvement, and tangential learning -- i.e., being a real pragmatic programmer.
>
> \*not included, perhaps

## Notes

### From @benjaminoakes

* He lives in Japan, works for CookPad
* iRobot is pretty permissable about hacking.  They have an open interface
* He wanted to do something with Ruby to hack his Roomba; everything else was in Java :(
* There's a serial port under a handle (or cover on older models)
* 8-pin old Mac printer cable helps for this
* Arduino + cable
* Two sources from iRobot: iRobot OI (newer, more accurate) or SCI (prettier)?
    * Go for OI
    * Wired up 8-pin cable to Arduino
    * Roomba will light up when plugged in
    * Not the easiest to pass to Roomba via Arduino (see Arduino Sketches)
* RAD ("Ruby Arduino Development")
    * Was out of date
    * Decided to just do the C himself
    * Hard to debug
* Wrote his own wrapper
    * Writing out opcodes
    * Some gets more complex and has multiple args, in effect
* Demo
* Binary and Signed Integers unusual/difficult with Ruby
* "WiFly" (sp?)

## External Links

* [Ruby Arduino Development](http://rad.rubyforge.org/)
