**Presenter:** Anthony Lewis

## Bio
This is a training session @ 2013 [Lone Star Ruby Conference](http://www.lonestarruby.org/2013/)

## Abstract
This training covers the following topics:

  * Ruby Object model
  * Modules/ Mixing
  * Metaprogramming

## Summary

  * In Ruby, everything is an object, you can define methods on class level and instance level.
  * `inlcude` is for instance methods and `extend` is for class methods, you can also use `include` to do `extend`
  * learn how to use `prepend` to effeciently do Fiboniacci method
  * `method missing` is powerful and dangerous (see example)

## Memorable Quotes

  * "The wifi really sucks..."
  * "Usually people don't do live coding as a presentation, but I'd like to try to get my hands dirty."

## Notes

### Ruby Object Model
  `send` : `calling a method is also sending a message`

    Person.new.send :greet

Singleton Class (Eigenclass): a singleton method is a method defined on an instance

    superman = Person.new("Clark")
    def superman.fly
      puts "Up, up, and high"
    end
    superman.singleton_class
    > #<Class:#<Person:0x007fa0eb03c6c0>>

### Modules/Mixins
  include: instance methods, extend class methods.
  Prep a module: include module methods before methods defined in the class

    module Memoize
      def calc(n)
        @@memo || = {}
        @@memo[n] || = super
      end
    end

    class Fib
      # without prepend, it's not fast.
      def calc(n)
        return n if n < 2
        return calc(n-1) + calc(n-2)
      end
    end

### Metaprogramming
  `class_eval`: creates instance method, evaulate a code string (type is String) as if it were typed directly into the class definition

      > p.name
      > NoMethodError: undefined method 'name'

      class Class
        def get_attr(attr)
          self.class_eval "
            def #{attr}
              @#{attr}
            end
          "
        end
      end

      class Person
        get_attr :name
      end

  `define_method`: create a method at runtime

      class Person
        define_method :punch do |arg|
          "Ouch!"*arg
        end
      end

  `method_missing`: invoked when a method is not found
      class method_missing(method, *args)
        # do something
      end

### Rails attributes, Rails dynmaic finders

      def method_missing(meth, *args)
        if metho.to_s =~ /^find_by_(.+)$/
          find_by_attributes(attr, *args)
        else
          super
        end
      end

      def find_by_attributes(attr, *args)
        conditions = Hash[attr.map {|a| [a, args[attr.index(a)]]}]
        where(condition, args)
      end

### Method decoractors / class decorators

      module TrackMethod
        def track(meth)
          self.class_eval do
            alias_method "old_#{meth}", meth
            define_mthod meth do |*args|
              puts "logging #{meth} with #{args.join(',')}"
              self.send "old_#{meth}", args
            end
          end
        end
      end

      # in the class where you want to use the tracking
      class Person
        extend TrackMethod

        track :greeting

        def greeting
          # something
        end
      end
    ````
### Show me only the instance_methods defined
      > p = Person.new
      > p.class.instance.instance_methods(false)

###Use Ruby Set
    require 'set'

    class User
      def initialize
        @features = Set.new
      end

      def method_missing(meth, *args)
        if meth.to_s =~ /^can_(.*)\?$/
          @features.include? $1.to_s
        elsif meth.to_s =~ /^can_(.*)$/
          @features << $1.to_s
        else
          super
        end
      end
    end

## Discussion

Define new instance method as we go..

    # define a new method inside that class
    def method_missing(meth, *args)
      if meth.to_s =~ /^can_(.*)\?$/
        self.class.class_eval do
          define_method meth.to_sym do
            @features.include? $1.to_s
          end
        end
      elsif meth.to_s =~ /^can_(.*)$/
        self.class.class_eval do
          define_meth meth.to_sym do
            @features << $1.to_s
          end
        end
      else
        super
      end
    end

## External Links
* [Some related website](http://www.lonestarruby.org/2013/)