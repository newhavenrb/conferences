Securing Your Rails App
=======================

* Rails is a fairly safe framework
* We normally provide features, not prohibiting something
* #TODO http://guides.rubyonrails.org/security.html
* #TODO http://www.owasp.org/index.php/File:Owasp-rails-security.pdf
* Trust no one
  * Don't trust the browser
  * DB: user entered data
* attr_accessible (whitelist), attr_protected (blacklist)
* a lesson in timing attacks (codahale.com) #TODO
* XSS so'ns
  * Don't use raw, unless you have a good reason.
  * Don't blacklist or try to correct suspicious code
  * Rails: sanitize() helper, lets you give allowed tags
* Look more at CanCan #TODO
* Look more at FireSheep #TODO
* SSL for more than login forms
  * Secure cookies
  * Strict-Transport-Security header (basically redirects to SSL), avoids a redirect that contains the cookie
* Big takeaway: upgrading to Rails 3 includes lots of security changes
* Security audit #TODO
