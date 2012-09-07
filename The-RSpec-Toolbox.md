From [[WindyCityRails 2012]]

**Presenter:** [[David Chelimsky]]

## Notes

From @benjaminoakes:

* DRW Trading Group (hiring)
* Rspec2
    * Micronaut:  Each example has its own metadata
    * New basis for Rspec

Basically the Command pattern:

```ruby
example_group = describe Something { }
```

```ruby
example = it 'does something' { }
```

* Used in output at command line, etc.
* rspec has formatter methods (there's an protocol with an interface)
    * Example formatters:
        * Documentation
        * HTML
        * 3rd party
            * `Instafail`: shows you error messages early
            * `Fuubar`
            * nyan cat
* Focusing tools
    * `autotest`, `guard` -- monitor changes to files and re-run specs
    * Sometimes you don't want it to rerun everything again (e.g., if you TDD)... so, **focus**!

```ruby
# FIXME: there's a config line that goes with this

it 'something', :focus => true do
end
```

Or exclude stuff:

```ruby
config.filter_run_excluding :slow => true

it 'something', :slow => true do
end
```

Shorthand:

```ruby
# Will be default in the future...
config.treat_symbols_as_metadata_keys_with_true_values = true

it 'something', :slow do
end

it 'something', :focus do
end
```

conditional filters

```ruby
describe Thing, :if => RUBY_VERSON >= "1.9" do
end

describe Thing, :if => ENV['GENERATE'] do
end
```

Can have specialized groups (what they do in `rspec-rails` -- look at it for examples):

```ruby
RSpec::configure do |c|
  # Gist: if in this path, include this behavior
end
```

Or just always use, say, `FakeFS`:

```ruby
RSpec.configure do |config|
  config.include FakeFS::SpecHelpers, :fakefs
end

describe 'something that writes files', :fakefs => true edo
  # ...
  # Or:  `include FakeFS::SpecHelpers`
  # TODO: can you have it output something too?  Like in the `documentation` formatter?
end
```

Can also alias `example` (as `it`, `xit`, `pending`, etc.)

### Config stuff

```ruby
c.default_path = "./behavior" # normally "./spec"
c.fail_fast = true
```

### Command Line

tag is for filters

```bash
rspec --tag focus:true
rspec --tag ~slow:true
rspec --tag ~slow:true --tag issue:123 # Might have been written down incorrectly
```

#### Local options: `./.rspec`

```
--color
--order random
--format progress
--profile
```

#### Global options: `~/.rspec`

Works the same way

#### Single run options

With `--options` at the command line, you can point to a file that has:

```
--tag issue:123
```
