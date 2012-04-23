**Presenter:** Mikel Lindsaar

## Bio

> Mikel Lindsaar heads up reInteractive, a Rails development company in Sydney Australia and StillAlive.com a web application monitoring service, he is also the author of the Ruby mail gem, is on the Rails commit team for his work on ActionMailer and has contributed to many open source projects.

## Abstract

> StillAlive.com was born from the 48 hour intense 2010 Rails Rumble and has grown!  Having recently passed our 50,000,000th site result, this talk discusses the real world challenges and optimisations required to take a code base born from the fires of YAGNI to a production system.
>
> This talk isn't about how you can scale from 0 requests to 500 billion requests per microsecond, but give a practical view to some of the performance problems we faced as the application steadily grew from a hack job into a functioning system.
>
> The journey will go through the mistakes we made, challenges faced and real world optimisations discovered, including some tricks we learnt along the way from concurrent index creation to using the ZeroMQ messaging framework with Rails

## Notes

* How do you bootstrap a startup on the side?
* From zero, to a lot more than zero
* More than just the technology
* Source is from @mikel's experience and mistakes
* What is StillAlive?
  * "Catch every bug on your site before your users do"
  * Live tests against full stack production environment
  * Smoke tests
  * Follow the common app paths
  * Test all layers of your stack
  * Rails 3 and capybara
* Feature scaling
  * First version was simple, but it worked
    * Rails Rumble forced them to toss out non-critical features
  * Email alerts with basic SMS
  * Core idea was sound
  * Hundreds of users in the first week, instant feedback
* Focus
  * Heavy focus on the core features
  * Worker ability upgraded
  * Stability of the site
  * False alarms
* Worker Improvement
  * Removed image loading
  * Add blacklist url support (to not trigger Google Analytics)
  * Added reliable timeout handling
* Communication
  * Engage w/ your customers as much as possible
  * But don't implement everything instantly
  * Pick features by bang for buck
  * Choose your battles
* Performance Scaling (Pointless unless you're actively monitoring)
  * User Experience Alerts
    * We use StillAlive on StillAlive :)
    * Good for broad "it's broken" alerts
    * Good for "query is taking far too long" alerts
      * (for example, if Rails process is taking too long, nginx will kill it before it can process Airbrake)
    * Great for "my clients are going to be pissed at me" alerts
  * System Operation Alerts
    * We also use per minute internal cron checks
    * Cron is super reliable, too
```ruby
# check_system_status every 1 minute
cron "check_system_status" do
  command "/usrs/bin/curl /url-to-check"
  action :create
end
```
    * many tools for this
      * PostgreSQL slow query logs
      * Rails log files, useful but only so much
      * airbrak or other exception notification
      * NewRelic for digging in and finding out why
  * Indexing
    * Lots of low hanging fruit
    * `explain analyse` is your friend
    * One query from 4 minutes to 0.448ms
    * How do you index a 60 million row table?
    * Usually indexing locks the table being indexed
    * Means your site is down until index completes
  * Concurrent Indexing (another fancy postgresql)
    * CREATE INDEX CONCURRENTLY
    * Takes a lot longer to run (like 3-4 times)
    * Can not be done in a rails migration
    * Effectively down two full scans of the table
  * Queuing
    * Used to use DelayedJob
    * Simplest thing that could work
    * Heavy, uses entire rails stack by default (takes a lotta RAM)
    * Needs a direct database connection
  * New Queuing system
    * Make small gems that do small tasks
    * ZeroMQ
      * Socket library - no polling
      * Simple to learn
    * Highlight scalable
    * Socket library - no polling
    * Low overhead - spin up workers on anything
    * Add and remove workers at will
    * Resilient to downtime
    * Custom gems amke installation a nspa
    * ssh to new host
    * `gem install script_worker & deps`
    * `$ ./script_worker /etc/config.yml`
    * can just do a gem upgrade & reload
* Process Scaling
  * Staging systems
    * Originally, staging was heroku, which was different that prod
    * Now: dedicated staging environment
    * as close as possible to production
    * spin up and spin down as easy
  * Application Deployment
    * Continuous deployment is critical
    * Micro updates and tweaks
    * Zero downtime deploys
    * Must automate (this is key)
  * Application Configuration
    * Using chef for configuration
    * EngineYard makes this simple, since it's chef by default
  * Standardization
    * The more standard you can make any process, the more profitable you will be (look at McDonald's)
    * This is especially true of web applications
    * Deployment, commits, branching
    * Standardize them and win
* Summary
  * Performance Scaling
    * Focus on key issues
    * Chose highest bang for buck
    * Pick a deadline and stick to it
    * Stay in communication with clients
  * Application Scaling
    * Use database tools
    * Use external monitoring tools
    * make smaller tighter chunks of repsoniblity
    * try to avoid loading up your Rails stack
  * Process Scaling
    * Dedicated staging should be as close to production
    * Automate, automate, automate

## External Links

* [ZeroMQ](http://www.zeromq.org)
* [ZeroMQ Guide](http://zguide.zeromq.org/page:all)
