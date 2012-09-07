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
it 'accepts deposits', :focus => true do
end
```
