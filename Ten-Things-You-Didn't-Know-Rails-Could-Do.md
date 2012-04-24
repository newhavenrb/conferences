**Presenter:** James Edward Gray II

## Bio

> James (@JEG2) has been a Rails programmer for about as long as it has been fashionable to be one and a Rubyist even longer than that.  As you probably know from listening to him on the Ruby Rogues podcast, James loves to dig into how our community and code works.

## Abstract

> Rails is huge.  Even if you have worked with it for a long time, it's unlikely that you have stumbled across everything yet.
>
> Do you really know what all of the built-in Rake tasks do?  Have you seen all of the methods ActiveSupport makes available to you?  Are you aware of all the queries ActiveRecord is capable of?
>
> In this talk, I'll dig into the extras of Rails and see if I can't turn up some features that you don't see all of the time, but that might just be handy to know about anyway.  I'll make sure you come out of this able to impress your friends at the hackfest.

## Notes

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

TODO

### From @danbernier

TODO

## External Links

* [Some related website](http://www.example.com/)
