**Presenter:** Thomas Pomfret

## Bio

> Thomas is CTO at Mint Digital where he has worked since the very beginning after acing the interview almost purely on the back of a sharp suit. Having been involved in all of Mint's major projects he has great real world experience in developing mass participation web sites quickly and effectively along with some hard lessons learnt on how to make them stay up. He mainly hacks in ruby although has a growing love for erlang.
>
> Past speaking gigs include Scotland on Rails, London Ruby Users Group and Kings of Code.

## Abstract

> Rails makes it very easy to rapidly develop web applications, but doesn’t always make it so simple to deploy or secure them. 
>
> This talk is going to focus on best practices to secure your rails application, learnt through multiple high profile projects and penetration tests. The talk will be practical and show that this isn’t necessarily hard if thought about from the start. 
>
> We’ll also touch on getting the right balance of security without it getting in the way of the users.

## Notes

* SQL Injection - use rails's `find` method


* XSS - Secure your cookies, sanitize user input (html escaping)


* Session management - cookie security is based on `secret_token`
* Force SSL - `Rails.application.config.force_ssl = true` which can prevent someone from sniffing wireless
* Allow for logout
* Timeout - default rails is on session end / browser close, can be modified in config
* `reset_session`
* Password complexity - balance strict password policy with user experience
* Destroy session on logout
* Hash your passwords - devise uses bcrypt
* Do not allow for concurrent logins
* No critical data in your session!


* Mass Assignment
* `attr_protected` - blacklist
* `attr_accessible` - whitelist
* Slice out your attributes, `slice` whitelists, `slice!` blacklists


* Direct Object Reference
* In controller find objects by `@user.posts.find` instead of `Post.find`


* CSRF
* Rails defaults to use `protect_from_forgery` which prevents someone from modifying a model remotely if the session is open.  Uses a hidden token.


* Redirection
* Don't allow the user to modify the `redirect_to` path


* Sanitize file upload name
* Sanitize file upload type - don't allow executables


* SSL
* Just force it everywhere rather than back and forth


* Admin and intranet
* Whitelist IPs for admins


* Server side
* User Privileges
* Filter your logs

## External Links

* [Some related website](http://www.example.com/)
