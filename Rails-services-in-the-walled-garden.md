Synopsis
========

> In typical service oriented architectures, monolithic applications are sliced along domain verticals to create several independently evolving 'services' that can be used in combination to achieve various outcomes.
>
> Rails applications lend themselves to this architecture beautifully and are slowly making inroads in big organisations for this reason. One of the big problems with this approach is that analyzing and managing large quantities of data from multiple services to produce a result becomes very hard. What was originally a relatively simple task when all data sat in the same database as part of a monolithic application, becomes, when split into multiple services, a whole different beast.
>
> This talk will focus on our experiences building a system involving about a dozen rails based services integrated over HTTP and XML and the issues we had to deal with when working with large data sets. We will talk about:
>
> * Various problems we faced while building RESTful APIs which demanded asynchronous communication between two services
> * Places where this asynchronous communication was needed to be initiated by the server, essentially a push mechanism instead of pull
> * Different approaches to this solution
>   * Sharing a database using read-only 'remote models'
>   * Creating read only local caches at each consumer
>     * Propagating updates by having the producer explicitly update each consumer
>     * Propagating updates using a message queue and the pros and cons of integrating with them in Ruby

Context Rails + SOA + Walled garden
===================================

* Walled garden: services within a business, not used outside
* SOA: Sevice Oriented Architecture
  * Advantages
    * Map to biz verticals, self contained
    * Few ripple effects besides API
    * Indepentent evolution/deployment
    * What's being used?
    * Easier to understand/maintain with smaller codebase
  * Disadvantages
    * Authentication/authorization
    * ACID transactions between databases
    * Versioning
    * Continuous integration
* Rails
  * What about Sinatra + Padrino?
  * Rails is popular, but talk extends to Sinatra
* Walled Garden
  * Easier to have roadmap
  * HATEOAS is hard http://en.wikipedia.org/wiki/HATEOAS

> HATEOAS, an abbreviation for Hypermedia as the Engine of Application State, is a constraint of the REST application architecture that distinguishes it from most other network application architectures. The principle is that a client interacts with a network application entirely through hypermedia provided dynamically by application servers. A REST client needs no prior knowledge about how to interact with any particular application or server beyond a generic understanding of hypermedia.

Areas of Interest
=================

Authentication
--------------

* Stateless (no cookies)
* Firewall is an easy sol'n in a small case
* Central auth
  * Example: an OAuth 2 provider
  * ActiveResource doesn't give you response headers :(

Authorization
-------------

* "Roles over HTTP"
* Fragmentation is a problem
* Centralized roles and federated rules can be a good solution
* The role is centrally stored, the meaning is up to the application to figure out
* No silver bullet to the HTTP communication problem
* Keep performance in mind; monitor trends
  * Small payloads
  * Caching important
    * Fragment caching
    * Page cache if no auth important
    * Etags
    * ActiveResource doesn't have good support :(
    * Maybe try Wrest http://github.com/c42/wrest
    * Between networks?  Reverse proxy
  * Pagination imporant for index actions
