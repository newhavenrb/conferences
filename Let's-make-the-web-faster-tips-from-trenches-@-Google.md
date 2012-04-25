**Presenter:** Ilya Grigorik

## Bio

> Ilya Grigorik is a web performance engineer, an open-source and Ruby evangelist, a data geek, and a proverbial early adopter of all things digital. He is currently helping lead the social analytics and web performance efforts at Google. Earlier, Ilya was the founder and CTO of PostRank, a social analytics company, which was acquired by Google.

## Abstract

> Google loves speed, and we want to make the entire web faster - yes, that includes your Rails app! We'll explore what we've learned from running our own services at scale, as well as cover the research, projects, and open sourced tools we've developed in the process. 
>
> We'll start at the top with website optimization best practices, take a look at what the browser and HTML5 can do for us, take a detour into the optimizations for the mobile web, and finally dive deep into the SPDY and TCP protocol optimizations. 
>
> We'll cover a lot of ground, so bring a coffee. By the end of the session, you should have a good checklist to help you optimize your own site.

## Notes

### @abelmartin's notes

### NOTE: My notes are really sparse because the slides are really good.  Make sure to check them out below.  
* How Google analyzes pages for performance & speed.
* [Rephrasing]: "Web pages/apps have 'no install' because we're always installing (JS, CSS, HTML, etc)"
* You can use amazing tools like "performance" && "performance.timing" in the console in any modern browser
  * Google is tracking that as part of analytics
  * Also gives you server response time
  * Use Segment Parsing
    * Setup PDF reports than can email you whenever you want!
* Averages lie so Histogram everything
* Measure the perceived latency!
* Check out chrome://tracing
  * It can create a detailed view of exactly what the bowser is doing!
  * helpful for game development
* Dev Tools is actually a web app
  * Android phones can have their DevTools running on a computer and analyze everything
  * You can drive Chrome from CLI using a ruby script if you want!
* WebpageTest.org for info other browsers
  * IT EVEN SHOWS YOU FRAME BY FRAME HOW THE CONTENT LOADS IN
  * FREE
* PageSpeed Online
  * Has an API
  * Only requires an API key
  * PageSpeed also has a SDK that you can install and run locally!
  * Chrome & Firefox extensions
  * mod_pagespeed
    * Apache plugin
    * AUTOMATIC resource cleanup & scrubbing!
    * It's getting easier and easier to get this working
    * has a TON of filters too
   * PageSpeed Service beta
      * set CName to a Google Server and it handles the optimization for you and serves it all via CDN

Where to start  
* Covered in the slides



## External Links
* [Slides for the talk](http://bit.ly/faster-rails)
* [WebPagetest](http://www.webpagetest.org/) - Free web page testing across different browsers and locations
* [PageSpeed](https://developers.google.com/speed/pagespeed/) - Google web page performance tools