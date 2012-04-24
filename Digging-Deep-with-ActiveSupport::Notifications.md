**Presenter:** Matt Sanders

## Bio

> Matt Sanders (@nextmat) is a Senior Software Engineer at Librato, Inc, where he works on the Metrics real-time monitoring platform and dreams of making your data beautiful. He’s been active in the Ruby community since 2005 and is a regular contributor to open-source projects including compass-960 and excon. On sunny days he can be found chasing waves on the Texas coast.

## Abstract

> Rails 3 and above includes a powerful instrumentation system, ActiveSupport::Notifications, which can be used to track performance and event information for all aspects of your application. Notifications are light-weight, easy to setup, and can be consumed by multiple subscribers (logs, audit trails, consolidated metrics, other parts of your application).
>
> In this session we’ll start with the basics of ActiveSupport::Notifications and work our way to powerful advanced use cases. Topics we’ll explore include:
>
>  - How to set up and use notifications
>  - Logging what you want from any tier of your system
>  - How to capture and aggregate performance/business data for the metrics you care about most
>  - Conditional monitoring in production: flag on and off data by system or customer to get to the root of problems more quickly
>  - Using ActiveSupport::Notifications in non-Rails applications and your own libraries

## Notes

### @danbernier's notes

"What gets measured gets managed." Use notifications for letting
people know.


#### How it Words

#subscribe, #instrument

*Sending messages*

AS::Notif.instrument 'messagename', :extra => 'args'

AS::Notif.instrument 'messagename', :extra => 'args' do
 # stuff in here is timed
end

*Subscribing*

# Subscribe w/ string or regex for message name
AS::Notif.subscribe 'messagename' do |*args|
  # work with the data in here
end


#### Rails hooks

In there for controllers, views, action mailer, active record, rails
cache...

For some reason, the rails message names are scoper, right-to-left:
'sql.active_record', not 'active_record.sql'

You can easily use this to measure:
* request-level performance stats
* requests by server
* errors by server
* selects by model


You can set up custom logging: log user signups, etc. Whatever your
domain requires.

You can log to StatsD from Etsy, or New Relic, for error tracking.
You can fire out to KISSmetrics. Save data for later. (The blocks can
also take an object with a #call method, of course.) Fire off
campfire/gchat/ganalytics alerts.


#### Performance

They run in the request thread, so: be fast, or background it.

The dispatcher can be replaced by your own queue system (set
AS::Notifications.notifer, only about 7 methods). You could background
everything, for instance.


*Unsubscribing*

You can unsubscribe, but the notifier caches its listener-lookups, so
if you unsubscribe, you're changing that.


#### Moar Tricks

Conditional Instrumentation: Instrument only for certain
features/users.

Call out to a bot (campfire with twke, etc)

Short-cut the method call:
def_delegator ActiveSupport::Notifications, :instrument


Listen to logs:
ActiveSupport::LogSubscriber
UserLogger.attach_to :user
...when something interesting is logged, you're notified. (I think?)


You can use this outside of rails, if you use securerandom


Support #instrument in your Gems
* Excon instrumentation


#### Other stuff

Lograge: detaches lots of the existing log writers, & puts in a
simpler one

Harness: use Redis as a backing store, and simplifies stats collection

Search rails source for Notification - lots of good examples


#### Final Note

Discuss conventions for AS::Notifications on your team.

E.g, you should wire up subscriptions in initializers, use
backgrounding for certain tasks...


## External Links

* [Some related website](http://www.example.com/)
