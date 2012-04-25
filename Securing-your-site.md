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

## Notes from @jamesgary

* SafeBuffer
  * Secure your cookies
  * Ensure user submitted input is sanitized
* Session mgt
  * `rake secret`
  * Rails.application.config.force\_ssl = true
  * Allow logout
  * Timeout
    * In config.session\_store, :expire after
    * In devise, :timeout\_in
  * reset\_session
  * No concurrent logins
  * Account lockout
  * Password complexity
  * Destroy session on logout, not just `reset_session`
  * Hash your passwords
    * Use bcrypt
  * No large objects, or critical data in sessions
* MassAssignment
  * attr\_protected # blacklist
  * attr\_accessible # whitelist
* Direct object reference
  * Use scoping methods (:editable\_by)
* CSRF
  * Use authenticity\_token
* Use correct http verbs
* Redirection & file uploads
  * Don't do redirect\_to params[:from]
  * Instead, redirect\_to session[:from]
  * Sanitize file names and types
  * Paperclip has a lot of helper methods for this
  * Process asynchronously
* ssl\_ciphers and ssl\_protocols
* Admin & intranet
  * CSRF, XSS, injection, restrict access
* Info leakage
  * server\_tokens off;
  * Don't give away anything
* Server-side


## Notes from @ZachMorek

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

* [Slides](http://speakerdeck.com/u/bob_p/p/securing-your-site)
* Rails' security page
* [rorsecurity.info](rorsecurity.info)
* [brakemanscanner.org](brakemanscanner.org)
* Tarantula gem
* www.owasp.org
