**Presenter:** Richard Huang

## Bio

> Richard Huang is a senior engineer, a passionate rubyist and open source advocate, he created  <a href="https://github.com/railsbp/rails_best_practices">rails_best_practices</a> gem, and also built the websites <a href="http://rails-bestpractices.com">rails-bestpractices.com</a> and <a href="http://railsbp.com">railsbp.com</a>

## Abstract

> Rails is so popular to be used to fast build a website, at the beginning we sometimes write codes too fast without considering code quality, but after your company grows fast, you have to pay more attentions on code review to make your website more robust and more maintainable.
>
> In this talk I will introduce you a way to build a semi automatic code review process, in this process a tool will analyze the source codes of your rails project, then give you some suggestions to refactor your codes according to  rails best practices. It can also check your codes according to your team's rails code guideline. So engineers can focus on implementation performance, scalability, etc. when they do code review.

## Summary

Automation of tasks is important.  This talk discussed the speaker's open-source `rails_best_practices` gem (similar to JSLint in concept) and its associated web service.  It can point out code smells, etc. as a GitHub hook.  If you already use GitHub and do pull requests for code review, this can automate simple detection.

## Notes

### From @benjaminoakes

* He works on OpenFeint
* Prefer automatic processes to manual processes (e.g., automatic testing)
* Totally manual: code review
    * Automatic tests / manual verification
    * Automated deploy via Capistrano
    * But can you automate code review?
* What is review?
    * Easy 
        * Coding guidelines
        * Syntax
        * Remove unused methods
    * Difficult
        * Performant
        * Scalable
    * Automate "easy"
    * Gem: `rails_best_practices`
        * Can suggest things like "use scope access", "use model association", or "use query attribute")
    * A code review service?
        * railsbp.com
        * Integrates with GitHub (service hook); looks similar to Travis CI if you've used that
        * Tracks history
        * Configurble
        * Gives analysis in web UI
        * Configuration
        * Cost: unclear (TODO check site; looks like donations)
        * Plugins are possible (e.g., for `try()`)
        * Both the site and gem are OSSS

## External Links

* [Slides](http://www.slideshare.net/flyerhzm/semi-automatic-code-review)
* [`rails_best_practices` gem](http://rubygems.org/gems/rails_best_practices) TODO check link (internet connection is bad now)
* Twitter (TODO links)
    * @flyerhzm
    * @railsbp
* [`guard-rails_best_practices`](https://github.com/logankoester/guard-rails_best_practices) - Guard integration
* Jenkins integration TODO link
* [railsbp.com](http://railsbp.com) - online code review service, integrates with GitHub
