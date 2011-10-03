Upgrading from Rails 2 to 3
===========================

Rails 2.3.11
rake rails:update
no deprecation warnings
install rails_xss, fix views (painful)
no more .rhtml, .rxml, and .rjs

localization: end keys in _html
fake_arel: https://github.com/gammons/fake_arel

RESTful -> easier to update to Rails 3
gem 'yajl-ruby'

def display_name
  name.presence || login # presence checks for empty strings, etc
end

No non-AR fixtures in test/fixtures/

Musicians.where(instrument: 'guitar')
         .tap { |ms| p.ms.all} # Good for debugging.  `returning` no longer exists
         .map { |dude| dude.instrument_name }

Discrete steps

Bundler in Rails 2.3

bundle install --path vendor # alternative to rvm gemsets, works well with tags in vim, possibly for JSTD too
bundle package # in case gems disappear

Gemfile.lock in VCS # Good idea, mistake not to

alias be='bundle exec'
alias binit='bundle install --path vendor && bundle package && echo "vendor/ruby" >> .gitignore'

Edited vendor/plugins?  put your version into a VCS and pull in Gemfile

script/plugin install git://github.com/rails/rails_upgrade.git
rake rails:upgrade:check
rake rails:upgrade:backup # not necessary if using a VCS, but not bad
rake rails:upgrade:gems # doesn't check config/environments/*
rake rails:upgrade:routes # convert old style to new style routes, doesn't work perfectly.  Old syntax is just deprecated
rake rails:upgrade:configuration # tries to make an application.rb

git fu
------

  $ git undo # alias for reset --hard
  $ git add --patch # prompts interactively for each patch
  $ git add --edit # emits patchfile

Bundler
-------

lib/ isn't autoloaded
remove preinitializer if using Bundler before
config.load_paths += %W(#{config.root}/lib)

JS
--

javascript_include_tag :defaults
csrf_meta_tag

Some form helpers removed, see also prototype_legacy_helper gem to help with breakage
also, dynamic_form and simple_form (formtastic like) gems

fixing and replacing dependencies
---------------------------------

Some gems break.

'spec' => 'rspec' # rspec2, plus changes for config, make sure in dev env
cucumber uses test env

kaminari: will_paginate replacement for rails3
searchlogic -> metasearch (sorting is good too)
authlogic 3 is rails 3 compatible.  (devise?  meh.)
No AttachmentFu; you're screwed, sorry.  Check out Paperclip, CarrierWave.  Both work in Rails2.

2.1.2
2.2.3
2.3.11 # or just go here
3.0.7

set relativenumber

Rails 3.1
---------

Update in Gemfile first # Use git version now; beta1 barfs
$ bundle update rails
Watch for deprecation notices -- 3.1 removes all that stuff
  No old query syntax, etc
  Dynamic finders are staying around (?)

to_json => as_json
sprockets for assets, good for preprocessing JS (e.g. CoffeeScript)
  app/assets/foo.css.sass # => cached
  app/assets/foo.js.coffeescript # => cached
