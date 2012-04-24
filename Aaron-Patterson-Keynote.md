**Presenter:** Aaron Patterson

## Abstract

> When he isn't ruining people's lives by writing software like phuby, enterprise, and neversaydie, Aaron can be found writing slightly more useful software like nokogiri. To keep up his Gameboy Lifestyle, Aaron spends his weekdays writing high quality software for ATTi. Be sure to catch him on Karaoke night, where you can watch him sing his favorite smooth rock hits of the 70's and early 80's.

## Notes

### From @benjaminoakes

TODO

### From @danbernier

TODO

### From @jamesgary

* Failure to Remember
  * Toukaidou
    * Binary distribution of Ruby w/ gems to run rails, executable
    * Easy, quick installation for students, teachers
    * As developers, how important is your time?
    * Things can go wrong, and you'll have to spend time researching how to fix it
    * Ecosystem
      * Yehuda has a lot of work to make things work (like C extensions)
      * Volunteer for RailsBridge
* Failure to Evolve
  * Concurrency - Aaron hasn't been treating it as important as he should
  * Sending email should use Producer/Consumer pattern
  * We have ActionMailer, but no Queue
  * We do have ActionQueue, but no one uses it because it has no docs, examples, and needs lots of config
  * Lots of queuing tools, but all have different interfaces
  * Interface is most important, implementation is secondary
  * We need to demand a consistent API, but who is the driving force?
* Failure to Lead
  * Features
    * Fear of features
    * Older developers might have a lower tolerance for technical debt
    * Newer developers have higher tolerance for tech debt
    * Value = Current + Potential
    * Cost = Dev Time + Maintenance
    * Tolerance = Value / Time
    * If you don't pay maintenance time, your tolerance is higher
    * New devs are more likely to click the merge button
    * Types of features
      * Cosmetic: Dubious value and unknown debt (tagged logging, since it was not thread safe and inconpatible)
      * Refactoring: High value and low (sometimes negative) debt
      * Course Correcting: High value and unknown debt: Asset Pipeline
    * Asset Pipeline is 'too big to fail', but we have no bail out
    * We need to be prepared

## External Links

* [Some related website](http://www.example.com/)
