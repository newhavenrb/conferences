**Presenter:** Richard Schneeman, @scheneems

## Bio

* Works at Heroku Austin, write the gem sextant
* Get involved with open source. `CodeTriage`
* schneems.com/ut-rails

## Summary
* Some Ruby tricks that enable you to understand codebase faster
* A very good way to keep track of issues for open source projects: http://www.codetriage.com/

## Notes
1. Ruby `Method` class helps track down source location.
    # Given we have a class called Person which is defined in some mysterious location..
    > p = Person.new
    > p.method(:greetings).source_location

2. Use `ancestor_classes`
    # What if we have multiple locations where methods are deinfed?
    # i.e. super everywhere?

    Person.instance_method(:some_method_defined_somewhere).source_location
      self.class.ancestors do |klass|
        next unless klass.method_defined?(:some_method_defined_somewhere)
        puts klass.method(:some_method_defined_somewhere).source_location
      end
    end

3. Try to figure out where a method got called?

    def where_is_this_called?
      caller.inspect
    end

## External Links
[Ruby Method class]()