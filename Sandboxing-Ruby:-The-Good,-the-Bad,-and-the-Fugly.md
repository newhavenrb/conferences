## Motivation
We launched rails for zombies and we let people run code on heroku. Our initial method for sandboxing was regex based.
Zedshaw took us down quickly with a 1 liner. We then had to learn more about sandboxing.

### $SAFE 
Using $SAFE global, unfortunately rails doesn't work with any level higher than 0

### rubycop
looks at the ast 

### jail/jruby_sandbox
isolates Namespaces
create a sandbox evaluate a sandbox
Blocks dangerous operations with Sandbox.safe
Protects secrets
Limits resource utilization
sandboxeval %{while;true;end}, timeout: 5 # 
Can give sandbox "capabilitites
sandbox.ref(Foo)
foo = sandbox.eval('Foo.new')
foo.bar

please go to http://sandboxbreaker3000.heroku.com and try to break it.


