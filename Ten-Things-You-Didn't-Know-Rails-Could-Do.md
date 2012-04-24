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

TODO

### From @benjaminoakes

TODO

### From @danbernier

@jeg2 is known as "Mr. Ruby Rogue."

Uh-oh: it's now FORTY-TWO things.

1. Get a hug, every Friday

#### Interfaces: give Rails a hug

Run a rails app from a single file, under 20 lines.

Find TODOs:
rake notes:todo
rake notes:fixme
rake notes:custom ANNOTATION=foo

# TODO blah
# foo stuff

------

Sandbox your consolerails c --sandbox


Run Helper Methods in the Console
>> helper.time_ago_in_words(3.days)


Use non-webrick servers in dev
>> rails s thin


Custom configuration with Railties
ActiveSupport::OrderedOptions.new


#### Database

Shorthand migrations:
>> rails g resource user name:index email:uniq token:string{6} bio:text
string{6}: a lengith limit
:index: adds an index
:uniq: adds a unique index

Associations:
rails g resource article user:references
OR
rails g resource article user:belongs_to


rake db:migrate:status - tell you whether a migration has been run


Import your CSV, with headers:true, header_convertions: symbol


Store CSV in your database, with load & ...dump?


Pluck fields out of the database.

User.select(:email).map(&:email) -> User.pluck(:email)


Count records in groups
Event.group(:trigger).count: group them, & count 'em up


Let you override associations
belongs_to :previous_owner, class_name: "Owner"


Instantiate Records w/o a database
User.instantiate('id' => 1, 'email' => 'j@ex.com')


Use limitless strings in postgresql
...something like, :delete_limit?


Use Full Text Search in Postgresql
>> rails g resource article subject bodi:text
Use "tsvector" type in your migration
Uses a generic inverted index
plainto_tsquery('english', ?) -- postgres function for queriing it
It does stemming for you.


Use a different database for each user. You end up having to connect
to it in each controller action, so you're hitting the right database
for each request.


--------
Why do this?
* To give us new ideas
* It's fun!
--------


#### Ruby Extensions

Updating Ruby's fashion sense


Atomic file writes
File.atomic_write { |f| f.puts 'um' }


Merge nested hashes
Hash#deep_merge


Remove specific Keys from a Hash
Hash#except(:key1, :key2)


Add defaults to a Hash
Hash#reverse_merge


Answer questions about strings
"magic".inquiry.magic?  #-> true


#### Views

Hide comments from your users with <%# ERb comments %>


Use a shorter ERb syntax
% if current_user.try(:admin?)
  <%= render "edit_links" %>
% end
...but you have to include PercentLineEnhancer into Erubis. The whole
line has to be ruby, and it's all removed from the output.


Use blocks to avoid assignment in views. Write helper methods to a) do
your math for you, and b) yield the value to a block. Delimits the
scope of the variable. (You can also use #tap.)


Generate multiple tags at once.
content_tag_for(:div, @article) now operates on collections.


Render any object:
class MyModel
  def to_partial_path
    "not_my_normal_model_path"
  end
end
render :partial as  ('as' is the important bit)


Group menu entrieswith grouped_options_for_select


Subclass ActiovView::Helpers::FormBuilder, and then...
f.labeled_text_field_with_errors :my_attribute
(You have to add these methods.)


----
@tenderlove has a THEME SONG???
----



Route Exceptions
the rails router is a rack application, so then:
match "/404"...



Route to Sinatra (for APIs) ...and he gave some kind of authorization
example that I kind of missed.


Stream CSV to users with `format.csv`, and headers['Content-Dispostion']


Do some work in the background
require 'thread'
@thread ||= THread.new do
  while job = queue.pop
    job.call
  end
end
...(rest of the example)
But you can queue up just a plain old lambda. That's pretty nice.



Publish a static site using rails - cache everything, then he has a
rake task that touches earch page on the site. (This one included to
ensure EVERYONE learned something from the talk.)


Slides are coming online. TODO ping him, since I missed the URL.





## External Links

* [Some related website](http://www.example.com/)
