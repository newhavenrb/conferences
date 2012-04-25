**Presenter:** Joseph Ruscio

## Bio

> Joseph Ruscio is a Co-Founder and CTO at Librato, Inc. He’s responsible for the company’s technical strategy, architecture, and generally hacks on all levels of the product. He’s a Ruby enthusiast and the author of the aggregate and rack-test-rest gems. @josephruscio on Twitter and Github.

## Abstract

> In the 21st century successful teams are data-driven. We’ll present a complete introduction to everything you need to start monitoring your service at every level from business drivers to per-request metrics in Rails/Rack, down to server memory/cpu. Provides a high-level overview of the fundamental components that comprise a holistic monitoring system and then drills into real-world examples with tools like ActiveSupport::Notifications, statsd/rack-statsd, and CollectD. Also covers best practices for active alerting on custom monitoring data.

## Summary

TODO

## Quotes

* "Monitoring is to operations as unit tests are to development." - @josephruscio
* "New code gets monitoring the same way new code gets tests." - @josephruscio

## Notes

### From @benjaminoakes

* He works for Librato Metrics
* Evite
    * Started in 1998
    * Grig Gheorghi said (paraphrased) It's not in production until it's monitored (TODO twitter link"
* SaaS 2002: Everything on your own hardware
* SaaS 2032: outsourced to the cloud
    * less than (or equal to) 1 ops person
    * OSS
    * Server instances come and go; "ephemeral infrastructure"
    * More change, worse tools
* Continous Deployment
    * About half in this room do it
    * Weekly release: everyone's scrambling to get something out
    * Continuous Integration (CI); run test all the time
    * "One-click" deploy
    * Feature-flagging: bleed users onto the new functionality
    * But bugs still make it through, so... we need _monitoring_
    * "monitoring is to ops as is unit tests is to development"
    * Find "chunky bacon" in the wild  :)
* Monitoring servies
    * A lot
    * Some good; some bad
    * Anti-pattern: use a bunch of off-the-shelf tools.  Hard to correlate.  Leads to "#monitoringsucks" (a movement).  TODO find irc, github repo, hashtag on Twitter
* Metrics: business, performance, resources, network
    * If you were to use a monolithic tool, you collect and then get something for analysis... but crosscutting is hard.
    * Cost of collection has to be near-zero (like for unit tests)
    * "New code gets monitoring the same way new code gets tests"
    * Logging
        * etsy/logster -- has a log counter/statistical analysis
        * logstash/logstash - mimics `syslogd`
        * Papertrail
    * ... notifications (FIXME missed this)
    * eric/metriks
* Aggregation
    * Cheap collection... now what?
    * etsy/statsd - ~300 SLOC node.js.  Anything instrumenting gets tracked over UDP packets.
    * Defined a (now standard) protcol
    * StatsD clients
        * zebrafishlabs/??? TODO
        * github/rack-statsd 
        * shopify/??? TODO
    * Lots of server implementations too if you don't want to use node.js
* Storage (persistance)
    * RRDTool
        * Default choice
        * "Round-Robin Database Tool"
        * Constant size buffer
    * Other, more interesting solutions
        * Graphite
            * Key/value pairs.  Hierarchy availablbe in DNS style names "foo.bar.baz"
            * Can be a lot of data
        * Another solution for a lot of data:  OpenTSDB
            * Based on HBase (Hadoop)
    * SaaS: Librato Metrics and others
* Correlation
    * Now collection and storage is cheap... how do you use it?
    * Metrics -> annotations
    * Allow for arbitrary combinations of data

## External Links

* Slides TODO
* [@josephruscio on Twitter](http://twitter.com/josephruscio)
* Projects TODO turn into github links
    * Logging
        * etsy/logster -- has a log counter/statistical analysis
        * logstash/logstash - mimics `syslogd`
        * eric/metriks
    * Aggregation
        * etsy/statsd - ~300 SLOC node.js.  Anything instrumenting gets tracked over UDP packets.
        * Statsd Clients
            * zebrafishlabs/??? TODO
            * github/rack-statsd
            * shopify/??? TODO
