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

* FridayHug.com
* Interfaces - Ways to give Rails a huge
* thesmallestrailsapp.com
* rake notes:todo, or rake notes:fixme
  * rake notes:custom ANNOTATION=JEG2
* Sandbox Your Console
  * rails c --sandbox # rolls back changes
* You can call helper methods in the console
* Use Non-Webrick servers in development
* Allow you to tap into its configuration
  * require Railtie, with config.custom in Railtie
  * You can configure plugins the same way you configure Rails
* Understand Shorthand Migrations
  * Default is string, can add limits
* Add indexes to migrations
* Add associations to a Migration
  rails g resource article user:references subject body:text
  rails g resource article user:belongs_to subject body:text
* Show you the status of the db
  * rake db:migrate:status
* Import your csv (see slides)
* Store CSV in your db
* Pluck fields out of your database
  * User.select(:email).map(&:email)
  * User.pluck(:email)
  * User.uniq.pluck(:email)
* Count Records in Groups
* Allow you to override associations
* Instantiate records without a db (tricky, maybe evil)
  * User.instantiate("id" => 42...)
* Use limitless strings in postgresql (see slide)
* Use full text search in postgresql
  * rails g resource article subject body:text
  * t.column :search, "tsvector"
  * `CREATE INDEX articles_search_index ON articles USING gin(search);`
  * (see slides)
* Use a different database for each user
  * config = ActiveRecord::Base.configurations["development"].merge("database" -> "db/${name}.sqlite3)
  * Reset activerecord
* Intermission
  * Why do this?
    * Trying to give us new ideas
    * Studies show this will help you solve Rails problems
    * It's fun! Remember to have fun
* Refine your fashion sense, @tenderlove
* Ruby extensions - Updating Ruby's fashion sense
* Write Files Atomically
  * `File.atomic_write(...)`
* Merge Nested Hashes
  * `Hash#deep_merge`
* Remove specific keys from a hash
  * params.except(:foo, :bar)
* Add defaults to hash
  * reverse_merge
* "foo".inquiry.foo?
  * Can use method_missing to make it natural
* Views
  * Hide comments from your users
  * `<%# ERb comments don't show %>`
* Understand a shorter erb syntax
  * `% foo` instead of `<% foo %>
* Use blocks to avoid assignments in view `<% calculate_tax @cart.total do |tax| %>` (can use tap if you already have value)
* Generate Multiple tags at once
  * content_tag_for(:div, articles)
* Render any object
  * Now, Ruby asks object, not class, how to render
  * render as
* Group menu entries
  * select_tag(::grouped_menu, grouped_options_for_select) Hash
* Build forms the way you like them
  * ActionView::Helpers::FormBuilder
* Inspire theme songs about your work (Ruby Hero Tenderlove on youtube)
* Actions
  * Route Exceptions
    * config.exceptions_app = routes
    * match '/404', to: 'errors#foo'
* Route to Sinatra (see slides)
* Stream CSV to Users
  * format.csv do .. end
  * set headers['Content-Disposition']
* Do some work in the background
  * require 'thread'
* Publish a static site using rails

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
    * Need a `before_filter` or similar
    * Could trigger by by subdomain
    * Not fighting with other users

#### Ruby

* `File.atomic_write` (makes a tempfile and moves it into place at the end; not good on NFS)
* Merge nested hashes:  `Hash#deep_merge` in Rails
* Remove keys from a Hash: `Hash#except(:foo, :bar)`
* `Hash#merge` overwrites; not good for `params`, so for defaults, use `Hash#reverse_merge`
* Predicates on strings.  Familiar example: `Rails.env.development`.  `"foo".inquiry.magic?`.  Works well with `validates_inclusion_of`

#### Views

* HTML coments or ERb comments.  Slower using ERb, but not visible.
* Shorthand ERb:  `erubis` broke: `% if foo.bar?`.  @Jeg2 has a pull request for this.   TODO link
* Blocks to avoid assignemnts (`each` and `tap`, or write a helper method that takes a block)
* Multiple tags at once with `content_tag` FIXME I think this isn't quite right
* Render any object using `Foo#to_partial_path` using `render partial: @foo`
* Group menu entries: `select_tag(...)` FIXME missed option name
* Make your own form builder (`ActionView::Helpers::FormBuilder`).  See also `default_form_builder` and `field_error_proc`
* @tenderlove's theme song (on YouTube)  TODO link

#### Actions

* Route exceptions to any Rack app
* `match '/404', to: 'foo'`
* Route to Sinatra.  Example:  Resque's interface.  `mount Foo, at: 'bar/baz'`
* Stream CSV to users:  `format.csv` and `headers["Content-Disposition"]` for filename.  ANything that responds to `each` and `<<`.  Use something like `Foo.find_each` to prevent defeating the purpose.  :)
* Background work: `Queue.new` (threadsafe) and `Thread.new`.  Then find the queue and then append something that has `run` (e.g., a lambda)
* Publish a static site using Rails.  Page cache everything.  `cache_page(...)`
    * Too fast FIXME fill in from slides
    * Spiders and writes everything out
    * Then `rsync`

### From @danbernier

TODO

## External Links

* [Friday hugs](http://fridayhug.com)
* Slides TODO (from Twitter)
