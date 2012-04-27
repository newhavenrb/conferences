You'd like to help?  That's great!

## Helpful Hints

Run into a problem?  Contact [newhaven.rb on Twitter](http://twitter.com/newhavenrb).

* The **web interface** can handle most easy changes.
* If you want to work with a **local clone**, there's a [[software]] list that might help you out.
* **You can't push by default** if you're not a member of the [newhaven.rb](https://github.com/newhavenrb) organization.  We'll be happy to give you this access to contribute, but another option is **[forking and making a pull request](https://github.com/newhavenrb/railsconf2012)**.  NOTE: the "code" repository may be out of date relative to the "wiki" repository.

## Things You Can Do

You can make any improvement that you'd like, but here are some ideas:

### For Anyone

If you feel like you need to coordinate on a task, consider adding a bullet point below with your GitHub username.  We may start using GitHub issues, if appropriate.

#### Easy

* **Pass the word along!**  The more eyes and contributors, the better.  Examples:  tweet, blog, email, tell a coworker.
* **Click the "watch" button.**  It's a little like saying "thank you" in GitHub-ese.  :)
* **Read the notes.**  Fixing typos, awkward/confusing wording comes naturally.
* **Check spelling.**  We have some problems with spelling.  Many of these notes were written quickly without a spell checker (e.g., in `vim` without having done `:set spell`).  The programs `aspell` and `ispell` might be useful also.
* **Fix formatting.**  Know Markdown?  A lot of this wiki was written offline, so some of the formatting doesn't look right on the web.  It'll be obvious when you see it.  :)

#### Medium

* **Add links.**  One of our goals is to have a comprehensive list of links to slides, gems, related sites, videos, etc.
    * **For videos,** please see [RailsConf 2012 on Confreaks](http://www.confreaks.com/events/railsconf2012).
* **Start a discussion.**  Anything relating to the talk is fair game.  One example of this is [[the DHH keynote|David Heinemeier Hansson Keynote]].  Also, see the [[template]].
* **Contribute missing notes.**  Talks missing notes are marked with "TODO" on the [[index|Home]].
* **Add notes you've taken yourself.**  Please add a section (`### From @username`) if you're adding a large block of notes to help reduce merge conflicts, or just integrate with the existing notes.
* **Improve a talk summary.**  A summary writting by one person might not be entirely accurate.
* **Look for TODOs.**  Search for "TODO", "FIXME" in the wiki pages for (simple) tasks.

This is a generated list of files with "TODO" or "FIXME".  See `script/list-todos`.

<!-- begin `script/list-todos` -->

As of 2012-04-26:

* [[Basecamp Next: Code Spelunking]]
* [[CoffeeScript for the Rubyist]]
* [[Home]]
* [[Its Not in Production Unless its Monitored]]
* [[Lightning Talks]]
* [[Practical Machine Learning and Rails]]
* [[RailsCore panel]]
* [[Rich Hickey Keynote]]
* [[Ruby Rogues Live Keynote]]
* [[Semi Automatic Code Review]]
* [[Taming the Kraken How Operations enables developer productivity]]
* [[Ten Things You Didn't Know Rails Could Do]]
* [[Using Rails without Rails]]
* [[software]]

<!-- end `script/list-todos` -->

#### Medium-Hard

* **Write a talk summary.**  Some of the abstracts are a bit long, and sometimes not entirely accurate.  Having 3-4 sentences/bullets to summarize would be nice.  Also, see the [[template]].
* **Work toward a single layout.**  Adjust existing notes to fit the suggested [[template]], if it makes sense to do so.
* **Find more notes.**  Search for "railsconf" or "railsconf2012" on GitHub (or even Google for blog posts) for people who may be interested in contributing.  Keep in mind that they need to be fine licensing their  work under the Creative Commons license that we use.

#### Hard

* **Combine notes.**  Many talks had notes taken by multiple people.  It would make sense to merge them.  This shouldn't be too bad, but will require more thought than the above tasks.
* **Make a single "Ruby conference" wiki.**  This would need some discussion.  See below.
    * I wrote some notes for RubyConf and RailsConf in 2011, which was how this wiki was originally created.  :)  It might make sense to rename this wiki, move the content here (from anyone who will allow it), and have it all in one place. - _@benjaminoakes_

### For newhaven.rb Organization Members

* **Merge pull requests.**  If there are any, we need to at least get back to the contributor with a comment.
* **Update the "code" repository.**  Conceptually, as simple as `git pull wiki && git push code master`.  We may want to automate this.
* **Add analytics.**  Figure out if we can use our existing Google Analytics account with this wiki (e.g. via `_Footer.md`).  GitHub doesn't provide great analytics on a page-by-page level.