**Presenter:** Mike Moore

## Bio

> Mike Moore hacks for a living at Bloomfire. He organizes conferences, is an occasional podcaster, part-time purveyor of Ruby-themed apparel, and tries to be a nice guy. He loves his family and the Ruby community.
>
> http://blowmage.com/
> http://twitter.com/blowmage
> http://github.com/blowmage

## Abstract

> Presenter and Decorators are design approaches that can be used in Rails applications outside of the standard Models, Views and Controllers. These approaches are becoming more and more popular as teams search for new ways to identify and manage the complexity within their applications.
>
> In this session Mike Moore will defined the Presenter and Decorator approaches using simple and clear terminology. Common design problems in Rails applications will be shown using real-life code examples and refactored toward Presenters and Decorators. Code will be improved and strengthened by identifying and respecting the dependencies within large applications.

## Notes

### @danbernier's notes

Rails is a big tent - erb & haml, rspec & minitest - so we have lots
of approaches. This is just one approach.

*Presenters should ease pain.*

Pain-driven development: only do new things in response to some pain.

*Example*: Components that can render themselves - lots of
indirection. Then, into Builders, back into Components (under
/app/components)...Components must implement #build...and then (oh
sweet) some ParitalComponent classes can be meta-programmed from a
list of property names. Then into haml.

Won't someone think of the new developers? The guys new to your
codebase? There's an overhead to going outside the norm of your
framework. You should only use presenters when the pain they solve is
exponentially more than they cost.

The rails view is a bikeshed: we argue about cosmetic details, not the
important stuff. (And, when you try something new, it's hostile to new
developers.)

*Example*: showing lots of HTML divs with counts (which add simple
numbers together), only if the counts are > 0.

Could make model methods for the addition, but...is that really
important for the domain? What do you name those methods? It's really
front-end presentation logic, so keep it out of the model. Put them
into an object in lib that wraps the model - easily tested, etc. This
takes a lot of logic out of the view. We've created a contract for our
views to expect.

Presenter libraries like decorator, ActiveDecorator, help w/
this. ActiveDecorator: every time an instance variable is passed to
the view, it checks its class name, & looks for a class named
#{class_name}Decorator, & wraps the variable in it.

*Example*: type serialization. If you want custom type serialization,
to have to put custom logic in your controller action render
blocks. It's not bad, but you can really only test it via integration
test.

Instead, make a FooSerializer class, with the appropriate `#to_json`
method, then use it in `respond_to { format.json }`.

For help: ActiveModel::Serializers. When rails renders JSON, it'll use
the same trick as ActiveDecorator.

*But what else can we do with presenters?* The problems he's had in
the view are more from inherent complex behavior in the views, not
serialization & simple logic. A presenter should let your views be
dumb.

Enter: the decorator pattern: attach additional responsibilities to
objects without subclassing.

Also enter: the mediator pattern: for keeping objects from referring
to each other explicitly, & varying their interaction explicitly.

Presenters are often mediators.

The presenter spectrum: they fit somewhere between the model & the
view. Close to the model, it's more like a decorator; close to the
view, it's a presenter.

Fowler: "It's easier to consider a presenter to be an abstraction of
the view." Closer to a model of the view, like a moustache object for
rendering.

(Neat idea: alias a foo accessor as show_foo?)

*Example*: a template with lots of "should I show _this_?" if-checks,
with complicated logic. Move those bits into a presenter. Give it
accessors for the objects the view will need.

Model your domain correctly, sure, but a presenter gives you a place
to jam in application-specific logic, to keep it out of your domain.

When you have lots of different kinds of logic, different situations,
you can even have polymorphic presenters.

JEG2: "Some of the code in presenters is the worst."

Suggested books: The Rails View, and Rails Antipatterns.

He's looking for work! @blowmage


## External Links

* [ActiveDecorator](github.com/amatsuda/active_decorator)
* [Draper](https://github.com/jcasimir/draper)
* [rabl](https://github.com/nesquena/rabl)
* [ActiveModel::Serializers](https://github.com/josevalim/active_model_serializers)
* [Jay Fields original post on Presenters](http://blog.jayfields.com/2007/03/rails-presenter-pattern.html)
* [Fowler](http://martinfowler.com/eaaDev/PresentationModel.html)