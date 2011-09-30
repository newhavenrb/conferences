Synopsis
--------

> Ruby, the beautiful, malleable language with a lovely object model and great reflection capabilities… and almost zero tools. If I had a coin for every time some Smalltalker gloated about the Smalltalk class browser or some bloke bragged about the Java refactoring tools, I could start my own bitcoin.
> 
> Building great tools for Ruby requires great support for Ruby itself. The problem is, there is often a giant molten blob of C or Java code in the Ruby implementation with a thin veneer of "Ruby" method bindings. Rather than supporting great Ruby tools, that effectively prevents building them. How does one browse core library classes like Array when the code is not even Ruby?
> 
> Rubinius addresses this situation on two levels. Firstly, the Rubinius core library is written primarily in Ruby. Curious what that `Array#[]` method does? Just pull up the Ruby code and take a look. Rubinius also creates first-class Ruby objects for Ruby infrastructure. When a method is defined, there is actually an object, `CompiledMethod`, that you can lay your hands on, inspect, and manipulate like any other Ruby object. Secondly, Rubinius builds essential tools into the virtual machine. There is a built-in debugger, profiler, and also stats for the garbage collector. Further, Rubinius has a facility, named Agent, for querying and controlling the virtual machine.
> 
> Nikita is a top-secret project to create a set of simple, integrated applications that use the Rubinius facilities to build tools for Ruby. The interface is a Sproutcore application, which enables using the tools remotely, for example, to monitor servers.
> 
> In this talk, we'll look at the Rubinius features that support writing tools for Ruby and examine how those features are used in Nikita. Then we'll set Nikita loose on some problem code. It might get bloody.
