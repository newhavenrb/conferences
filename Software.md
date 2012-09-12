If your Internet connection is good, all you need is a web browser.

Otherwise, this wiki [works offline](https://github.com/newhavenrb/conferences/wiki/_access) (which is great for conferences -- you know how Wi-Fi can be).

It's just a `git` repo full of Markdown files.  At minimum, you just need `git` and your favorite text editor.  Just fork like normal and make a pull request (or request push access from newhavenrb).

## Plugins

* `gollum`
    * [gollum](https://github.com/github/gollum): what GitHub made for `git`-based wikis.  (See also: [Fix `undefined method 'new' for Redcarpet:Module`](https://github.com/github/gollum/pull/271))  FIXME their latest relase might have fixed that; check and remove this notice if so.
* `vim`
    * [vim-markdown](https://github.com/tpope/vim-markdown): syntax, etc
    * [wikilink](https://github.com/mmai/wikilink): wiki navigation in `vim`

## Utilities

* [SparkleShare](http://www.sparkleshare.org/) ([on GitHub](https://github.com/hbons/sparkleshare))- Like Dropbox, but working with git repositories.  Makes wiki "live blogging" easier (but with a lot of commits -- notice how @benjaminoakes has 800+)