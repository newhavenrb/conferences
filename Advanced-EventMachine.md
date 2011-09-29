> We use EventMachine heavily in production. It is handling uploads to S3, managing thousands of messages a second or distributing agent workload. This taught us a load about EventMachine and some weird>  corner-cases. I want to about such advanced EventMachine topics and shared some use-cases and experiences from the trenches.

* Chunk up IO to keep from blocking the main loop!
* `EM.next_tick &block` schedules your block (see also EM.defer)

* Deferrables (`EM::Deferrable`)
  * Good for allowing EM style concurrency in your classes (callbacks, errbacks)
  * benjaminoakes: I'm not sure I understand how Deferrables are different from Promises or Futures. #EventMachine #RubyConf http://t.co/83bxGvJQ
* Queues (`EM::Queue`)
  * push on, pop off in worker
* Channels (`EM::Channel`)
  * Pub/Sub
  * Push messages on. Can subscribe or unsubscribe
* Iterator (`EM::Iterator`)
  * Close to the sequential stuff in Ruby stdlib
  * Kinda MapReducey.
    * "map": what you do in individual steps
    * "reduce": what you do when you get all the results (e.g. which is the biggest?)

* Fibers & EM-Synchrony
  * Helps with "callback hell" (lots of nesting)
  * Ruby 1.9+: "lightweight cooperative concurrency"
  * Let's you write synchronous-looking code that actually runs asynchronoulsy
  * See also: Goliath (lets you do async Rack)

* Testing
  * What do you do without the event loop?
  * Test domain logic
  * Then make sure the right stuff is fired
* Exception Handling
  * Error handling is hard
  * Deeply nested
  * Don't want to kill the main loop
