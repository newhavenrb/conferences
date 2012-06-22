Cutting Your Own Gems
---------------------

https://twitter.com/#!/benjaminoakes/status/71270520879976448 #TODO

* #TODO http://guides.rubygems.org/
* Manuals are important
* RubyGems is centralized, may change
* .gem file:
  * docs
  * code
  * gemspec
* A gem is a tarball of tarballs
  * metadata.gz: your gemspec, transformed to YAML
  * RubyGems has a whole implmenetation of tar
  * Needs to work on all platforms
* Gem:
  * It's your job to share/modularize code
  * Super easy to release
  * Don't call it:
    * [rR].*
    * rials
    * cute names, etc
  * Don't use capitals
    * Use underscores
    * Use dashes for extensions on something else (e.g. hedgeye and THEN hedgeye-client) #TODO
  * push goes up to the server
  * irb -rubygems
  * gem list -r hola # lists remote gems

  * bin for bins # TODO
    * ruby -Ilib ./bin/hola
      Hello world!
    * ruby -Ilib ./bin/hola Baltimore
      hello Baltimore!
  * test
    * http://test.rubygems.org/ #TODO

  * http://twitter.com/rubygems #TODO
  * doc-rails #TODO
  * yard #TODO
* Versioning
  * Minor: when you add features
  * Major: when you have backwards incompatible features

  * twiddle-wakka
    ~> 2.2 (more than or equal to 2.2, less than 3.0)

  * http://semver.org/ #TODO
