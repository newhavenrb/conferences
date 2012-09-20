# A Crash Course on Celluloid
## Tony Acieri [@bascule](https://twitter.com/bascule)

http://celluloid.io/

Threads on Rails!   

Sidekiq is main project using Celluloid   

Combine OO and Actor model is like peanut butter and chocolate   

Provides Active Objects based on Actor model   

Actor model is easier than you think   

Celluloid isn't the first attempt to combine OO and Actors   

Another project is ATOM in Python   

Forgotten approach to concurrency is OO and Actors   

Celluloid makes it simple to write a concurrent program   

There is a railscast on Celluloid   
 * http://railscasts.com/episodes/367-celluloid   

Synchronous calls are the same as normal Ruby calls   

Asynchronous calls    
 * schedule work to be execute   
 * method returns nil and thread is free to continue   
 * work is executed when the Actor gets around to it   

Futures   
 * When you care about response from Asynchronous call   
 * Analogy is calling to a restaurant to order food before picking it up   

Pools   
 * Neatest feature!   
 * Have group of Actors and you can schedule work inside of the Pool   
 * Calculate things in parallel   

Beware of the GIL   
  (see slides)   
