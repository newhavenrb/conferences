**Presenter:** James Edward Gray II (@jeg2)

## Bio

> James (@JEG2) has been a Rails programmer for about as long as it has been fashionable to be one and a Rubyist even longer than that.  As you probably know from listening to him on the Ruby Rogues podcast, James loves to dig into how our community and code works.

## Abstract

> Rails is huge.  Even if you have worked with it for a long time, it's unlikely that you have stumbled across everything yet.
>
> Do you really know what all of the built-in Rake tasks do?  Have you seen all of the methods ActiveSupport makes available to you?  Are you aware of all the queries ActiveRecord is capable of?
>
> In this talk, I'll dig into the extras of Rails and see if I can't turn up some features that you don't see all of the time, but that might just be handy to know about anyway.  I'll make sure you come out of this able to impress your friends at the hackfest.

## Notes

Really, 42 things.

### From @james\_gary

TODO

### From @benjaminoakes

* Who
    * He's on Ruby Rogues
    * Rubyist for 8 years
    * Ruby code/documentation
    * CSV
* Rails 3.2.3
* Rails app in a single file
* `rake notes` for `TODO`, `FIXME`, `OPTIMIZE`
    * `rake notes:custom` ...
    * TextMate bundle
* Sanbox `rails console`
    * DB changes reverted
    * `rails c --sandbox`
* Helper methods in console
    * `helper` objecdt
* Non-webrick servers in dev: `rails s thin`
* In Railties: tap into `config`
    * `require` first

#### Database

* Migration shorthand
    * `string` by default, limits in `{}`)
    * Indexes at command line `name:index`
    * Associations: `user:references` or `user:belongs_to`, column, `add_index`, and association (`belongs_to`)
    * `rake db:migrate:status` tells you whether a migration is applied
* CSV
    * Import CSV data (see slide).  @jeg2 gets this all the time
    * CSV in database (use `load` and `dump` for `serialize`)
* Pluck
    * `Foo.select(;email).map(&:email)` same as `Foo.pluck(:email)`
* Records in groups `Foo.group(:bar).count`
* Override associations: `def foo=`
* Instatiate records without a DB: tell its id, etc `Foo.instantiate('id' => 1)` #evil
* Limitless strings in PostgeSQL (rather than a text field?  I'm confused)  FIXME
* Full text search in PostgreSQL: `t.column :search, "tsvector"` SQL: `gin(search)` (same as what Sphinx uses)
    * Too quick; see slides  FIXME
    * Does stemming, case insensitive
* User in own database
    * SQLite is good for this
    * Uses `ActiveRecord.establish_connection` (he made a library... `user_database`?) TODO

### From @danbernier

TODO

## External Links

* [Friday hugs](http://fridayhug.com)
