# Services, Scale, Backgrounding and WTF is going on here?!??!
## David Copeland
@davetron5000

## Introduction
Story about developers making resonable decisions and move from monolithic app to services, but things will still go wrong!
Real world experience running payments on LivingSocial
Syncronous Rails app moved to Async

## Business Example
People signup with simple Controller!

*After sometime, we notice a problem*
  Submit info
  Save to DB
  Wait for mailer (this is the problem)
Bad resource allocation!
Need to maximize our resources to increase user experience
The fix is to send mail with Resque
We can scale and its flexible

*A couple months later, we have another problem*
Resque.enqueue throws a timeout
What is the state? 
  User account exists but can't be validated because email has not been sent
  Constriant on user.email, so the user cant recreate their account
How do we fix?
  $ bundle exec rails console production
NO!!!
Solution
  If the user can't be created and the email can't be sent, we need to rollback
  We can use database transactions with ActiveRecord

*Uh oh, we see another problem*
Resque job processes throws an exception and goes into failed queue
The error is ActiveRecord::NotFoundError
Race condition!!!
Transaction has not committed, so job doesn't see the new record
We can fix problem with retrying which is better(ish)

*Acquisition*
Their users will be our users!
Send welcome emails to new users and validate emails
After we create this person, we wan't to run business logic for sending email
We can use `after_create` hook and controller looses transaction block
Nothing with this is wrong, but it feels like there is something better

*We now need to log stats*
We add stats line to hook

*We now need a cache of all the people who signup*
Add cache line to hook

*OMG, do something stupid with a user*
Add dumb line to hook

_The `after_create` hook is now abused_

"Parallelism is just as weird in the company as it is in the computer"

*Lets roll some new Mailers*
There is now a `MailerService`
First app using a new service is never simple

*Meanwhile a refactoring is afoot...*
`after_create` hook is being fixed by moving stats, logs, cache, etc into job `self.perform` event

*Uh oh, now the job fails!*
We try running `self.perform` line by line and the third one fails
Now we are at a in between state
If we replay the job from the failed queue, certain processes will run N times

### The problem:
`MailService` is too dumb

### The solution:
`MailService` should be
  * idempotent
    * Require a request ID (see slides)
  * expose some internal state which can be queried
    * What emails have you sent? (see slides)

*We are now paranoid*
Mail gateway can fail
You can get out of your mind thinking of everything that can happen
You can not fix this!!!

## How can you not be paranoid

1. Have a historical record
  * log, log, log
  * Business logic
  * If something fails, what information do you need than put those into
    logs
2. Audit Activity
3. Prevent Bad Data
  * AR validations are great but not good enough
  * Put constraints on database
  * "Keep the data good"
4. Sanity Check the rest
  * On a cron, check the system looking for bad data
  * Fix the data and fix the bug *immediately*
5. Find Errors through monitoring
  * Fix the error
  * Emails from app should be red alert
  * If the Error isnt stop the world downgrade to a warning

## Extract Services
Don't just be dumb
Design for Idempotence
Provide Help for client (client self healing)

## In Review
Record history
(see slides)

NOTES
http://davetron5000.github.com/services-wtf-gogaruco/

QUESTIONS
After commit can solve resque problem










