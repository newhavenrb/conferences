Synopsis
--------

> Mocks have an a bad rap lately. We've all seen brittle and unreadable test code riddled with 'should_receive' and 'mock_model', leading to classes people don't dare to touch. RSpec has now taken "mock_model" out of their default scaffolding for Rails controllers, and is preferring real objects. Does this mean that the concept of interaction testing is flawed?
>
> Well designed code is easy to test, and mocks enhance your sense of smell. State-based testing will lie to you and hide your bad code for longer, but your interaction tests explode if you don't keep your code clean and your object collaborators few. That's as it should be.
>
> Come to this talk if you want to hear a robust defence of mocks as a testing tool, see some examples of ruby code exhibiting the dangers of a reliance on state-based testing, and hear how you can use mocks to heighten your sense of smell, decrease coupling and increase cohesion.

Takeaways
---------

* Keep unit tests on their object, use mocks outside ("mockist")
* You still have to test integration
* Look at Corey Haines's stuff
* Read Martin Fowler's Mock article
* Extract layers of indirection
