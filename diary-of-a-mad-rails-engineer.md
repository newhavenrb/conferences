**Presenter:** Real name, Akira Matsuda, @a_matsuda

## Bio

Akira Matsuda

## Abstract


## Summary

## Memorable Quotes

* You can't call yourself an engineer if you are not working on engines.
* Rails plugin is a Gem

## Notes
* Engine is a Rails plugin

### Create Rails engine step by step

    # Specify gemspec
    Gem::Specification.new do |s|
      s.version = 0.0.1
      s.name = "name"
      s.file_name = 'something'
    end

    > rails r

    # Adding Railtie class, to register initializer
    module MyModule
      class Railtle < ::Rails::Railtie
        initializer 'lsrc.init' do
          puts 'initialzier'
        end
      end
    end

### Rails engine

An engine can contain models, controllers, views, routes, etc.

    module MyModule
      class MyEngine < ::Rails::Engine
      end
    end

Engine can contain modules

    class Foo
      def foo
      end
    end

all models inside engine are loaded to $LOAD_PATH

### What can engines do
* Rails Engine can contain app, views, controllers

### Mountable engines (resolve routes conflict between the main_app and the engine)
* The problem: constants, routes, helpers often conflicts between main_app
* [Entity Relation Document](www.github.com/amatsuda/erb), pretty hot
* [Roundabout](www.github.com/amatsuda/erd), pretty hot
* [hocus_pocus](www.github.com/amatsuda/hocus_pocus), generates cucumber specs by recording your browser

## Discussion

## External Links
