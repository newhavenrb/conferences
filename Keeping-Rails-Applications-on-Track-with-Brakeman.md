**Presenter:** Justin Collins

## Bio

> Justin is a Ph.D. candidate at UCLA  and currently works as an application security engineer at Twitter.

## Abstract

> A recent report by Veracode (http://www.veracode.com/reports/index.html) found cross-site scripting in 68% of surveyed web applications and SQL injection in 32%, even though these are well-known, easily preventable, and easily detectable vulnerabilities. As applications grow larger, it becomes harder and harder to manually verify that every line of code is adhering to security guidelines - even given the built-in protection available with Ruby on Rails.
>
> Brakeman (http://brakemanscanner.org/) is an open source static analysis tool which provides painless vulnerability scans of Rails code from "rails new" through deployment. Running Brakeman as a part of continuous integration provides feedback during all stages of development and can alert developers immediately when a potential vulnerability is introduced. Bringing security testing as close to the developer as possible (even scanning as files are saved) means security problems are caught faster  - and the sooner problems are found the cheaper they are to fix.
>
> As a static analysis tool, Brakeman can be run without worrying about deploying the whole application stack: no webserver, database, configuration, or application dependencies required - not even Rails itself. This allows fast, easy vulnerability scans on any Rails project.
>
> We talk a lot about testing in the Ruby and Rails community, but somehow security testing is passed over. This needs to change!
>
> This talk will cover how to incorporate Brakeman into Rails development and how it can improve application security, as well as a look into how Brakeman works internally.

## Notes

* This is a file generated from the RailsConf JSON.  Please remove this notice when adding notes.
* If you're interested in the generator code, see the "generator" directory.
* This layout is just a suggestion.
* Bullet points might work well.  Paragraphs too.  Up to you.  :)

## External Links

* [Some related website](http://www.example.com/)
