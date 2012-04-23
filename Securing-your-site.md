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



## External Links

* Rails' security page
* [rorsecurity.info](rorsecurity.info)
* [brakemanscanner.org](brakemanscanner.org)
* Tarantula gem
* www.owasp.org
