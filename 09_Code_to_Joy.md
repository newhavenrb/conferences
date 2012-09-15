# Code to Joy
## Avdi Grimm
@avdi

## These are a few of my favorite things
Remote pair programming with various developers
Thats so cool; I didnt know you could do that!

Ruby is designed to make programmers happy
Ruby makes me smile

Writing "Confident Ruby"
Can pay with a postcard which makes me happy

## Random walk through Ruby and StdLib
Look at tools and idoims which make me happy

## Splat
star or asterisk in Ruby
Like having multiple return values

```
res = Struct.new(:code, :msg)
res.code
res.msg
code, msg = *r
# doesn't support implicit splating
res = Struct.new(:code, :msg) do
  # now it works!
  alias_method :to_ary, :to_a
end
```

Awesome magic!!!

## yaml/store
Part of StdLid
File based persistence mechanism
```
require 'yaml/store'
# writes really clear yaml, objects are easily read
# really smart about objects referencing each other
```

```
require 'pstore'
# uses Ruby binary marshaling 
```

Good for maybe a command line app

## Enumerators
What does this do?
```
Kernal.to_enum
```
Turns our method that yields into an iterable object

```
require 'pathname'
# Walk ancestor path of directory
Pathname.pwd.ascend do |dir|
  puts dir
end

curdir = Pathname.pwd
# give me iterable methods!
# all power of enumerable available to the series
configs = curdir.to_enum(:ascend)
```

Lets talk about `break`
We can stop a straightline method, and we can force an early exit

Ruby has my back; it cleans up after me
```
def foo
  yield 'baz'
  # does this second
  break
  yield 'doh'
ensure
  # does this first
  puts 'grimm'
end
```

You can pass a value to the `break` keyword
Breaks out of execution, but overrides methods return value

```
f = open 'file.txt'
result = f.lines.detect do |line| do
  # Give up after first 100 lines
  break "<Line Not Found>" if f.lineno >= 100
  line =~ /foo/
end
result # => "<Line Not Found>"
```

## Subclassing Modules
Using `Forwardable` and `def_delegators` can potentially mean every change must be made twice

Maybe use SimpleDelegator, but we have to delegate twice and SimpleDelegator handles a single delegation

```
class Delegate < Module
  # When a message is sent to this object where this is included
  # It looks at itself
  # Than it looks at Delegate modules
  # ...and on up the ancestor chain
end
```

Create a new kind of module
Add state to the new module
Enables us to implement a new type of message delegation

## MINASWAN
Matz is nice and so we are nice
To balance out techincal debt or drama, write joyful code!
The only metric for joyful code is to share code
Give someone a wow moment (share code) to feel joyful!


NOTES
http://speakerrate.com/talks/16041
http://devblog.avdi.org/2012/06/05/confident-ruby-beta/
coupon: GOGARUCO2012
...or send a postcard

QUESTIONS

Use `define_method` because its really hard to get at instance variables of module
By using a closure, you have access to the module attributes


























