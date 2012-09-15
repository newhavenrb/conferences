# Cargo Cult Web Performance Optimization
## Ilya Grigorik
@igrigorik
http://www.igvita.com/slides/2012/gogaruco-web-performance/

## Webkit is important
1 billion mobile devices
2 million new activations a day
They all run webkit
Webkit is the largest development platform in the world
We are missing browser fundamentals
Whole compsci program could be taught from browser source
Every branch of computer science is within the browser

## Developers are responsible for furthering their education
Understanding how a browser works pays really high dividends

## Observations
Browser is an open box, not a black box
(see slides for components diagram)

Webkit is a browser engine which has a lot of components like chrome and bookmarks
Webkit ships with many components
 * Webkit at its core is WebCore
    WebCore is reused by all WebKit browsers
    WebCore is responsible for
      Resource dispatch
      etc
 * JavaScript Engine
 * Platform APIs

## Network Stack
Just because its webkit doesn't mean its uniform and all the same!

The browser gets faster as you use like with things like DNS prefetch

chrome://histograms/

Flush allows parser to forge ahead instead of waiting for the entire page

Pushing logic into JavaScript hides details from browser and the browser cant help

Read through Document Parser code and understand comments

DOM Tree has a lot elements which we don't care about, we only care about visual elements

DOM Tree is made of many different trees, some elements get their own render layer

Its better to be consistent instead of jumping all over with FPS
Its worse to jump from 15FPS to 60FPS

IF you only remember one thing!
Read the source, and use code.google.com to search the source

Ilya says browser education is very important
Its the single best investment we can all make
It will enable more innovation in the future
