Presenter: @avdi

* Nested exceptions: good for gems!
* Circuit Breaker pattern
* Sinatra: `last_modified`
* `Hash#fetch` raising an exception
* `might_be_nil` or `fail "Blah"`
* `begin` as a code smell... do outdent `rescue`/`ensure` instead
* make a "contingency method" `with_io_handling { do it }`

Maybe wrap your exceptions:

    module Mylib::Error; end
    rescue Eception => e
      e.extend Mylib::Error
    end

* UserError, LogicError, TransientError

* Book code: RUBYCONF2011
* avdi.org/devblog/exeption-ruby
