From [[Gogaruco 2012]]

**Presenter:** [[Erik Michaels-Ober]]

## Bio

> Erik Michaels-Ober is the creator of one of the most popular Rails
> engines: RailsAdmin. He is also the author of MultiXML and T, a
> command-line power-tool for Twitter. When he's not hacking on those
> projects, he helps maintain OmniAuth among other Ruby gems and
> open-source Rails applications, including RubyGems.org. He was a 2010
> Ruby Summer of Code mentor and a 2011 Google Summer of Code mentor,
> while serving as a Code for America Fellow. He lives in San Francisco,
> California.

## Abstract

> As of Rails 3.2, plugins are officially deprecated. They have been
> replaced by Rails Engines, a class of public methods for hooking into
> Rails applications. This session will explain how to write a Rails
> Engine from scratch or convert your existing plugin to an engine. It
> will also cover best practices for making your engine play well with
> others, and when to factor pieces of your existing Rails application
> code into an engine for reuse across multiple applications.

## Summary

* Rails Engines dates from Oct. 31, 2005!
* DHH was initially against engines.
* James Adam, creator of engines: "It would be madness to include
  them in the core of rails".
* Merb Slices: "Little slices of MVC cake"
* Erik wrote MerbAdmin.
* Dec. 23, 2008 - Rails/Merb merger.
  * This killed Merb, but brought many ideas from Merb into Rails.
* The Russian Doll Pattern - 2009 talk by Wycats and Carl Lerche
* 2010: Ruby Summer of Code - Piotr Sarnacki - Mountable Engines
* Old plugin style deprecated in rails 3.2, removed in 4.0

## Memorable Quotes

## Notes from @simeonwillbanks

### Introduction
All a rails app is a bootable rails engine  
Engines do not know how to start themselves, but are everything else, MVC  
Engines can plugin to engines  

Rails engines are fundamental building block of rails

### History
James Adam is creator of rails engines  
1st commit to engines plugin was 10/31/2005  
Rails 0.14.2  
Really old concept/feature  

DHH was against engines!

James Adam thought it would be "Madness" to have engines in rails
  
Merb slices introduced on 05/21/2008
Slice out bits of functionality and use across multiple applications

Rails and Merb merge on 12/23/2008  
Concepts of merb, including engines, were built into rails core

The Russian Doll Pattern by Carl Lerche and Yehuda Katz  
Apps within apps

Ruby Summer of Code 2010  
Piotr Sarnacki used Russian Doll Pattern and implemented it in rails  
Mentored by Carl, Yehuda and Jose Valim 

Bogdan Gaza rebuilt MerbAdmin

Rails 3.0 uses engines!  
Pain point was assets which had to be copied via rake task or generator

Rails 3.1 Asset Pipeline, FTW  
Puts every engine in load path for assets  
Looks in all engines to load assets  
Engines became first class citizens!

Rails 3.2 deprecates vendor/plugins  
The way forward is engines  
Rails 4, engines are the only way

### Write a Rails engine

Easy, same as writing a rails app  
`$ rails plugin new my_engine --mountable`  
very similar file system  

 * Engines are namespaced by modules
 * Engines inherit from Rails::Engine which adds engine to load path
 * Engine is not added to Gemfile, specify via gemspec
 * Can have custom rake tasks in lib/tasks and scoped to engine name
 * Can define generators lib/generators and scoped by engine name
 * Can write migrations db/migrations and scoped by engine name
  * `rake my_engine::install::migrations` only copy in new migrations
 * Routes are defined in engine and engine is mounted in client app
   routes at a certain path

### Testing a Rails engine

Best practice is 
 1. to create a dummy app in test directory
 2. mount engine in dummy app
 3. test the dummy app

For more info: http://guides.rubyonrails.org/engines.html

### When should I write an engine?

1. If you are at a point and you have two apps which need to share logic,
slice out the logic into a gem to be shared.
2. A base like scaffolding, assets or template which can be mounted
into multiple apps and reused


## Discussion

