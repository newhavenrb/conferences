From [[Gogaruco 2012]]

**Presenter:** [[Amit Kumar]]

### Intro
Objective-C is complicated!   
RubyMotion is enjoyable!   

### What is RubyMotion
Ruby tool chain for building iOS apps   
Neighbors envy and developer happiness

Fork of MacRuby   
Compiles into optimized machine code   
Automatic object memory allocation and reclaim   
Compiles the interfaces built in Interface Builder of XCode   
Ruby-runtime tightly integrated    
Share ancestors as Objective-C   
Object can be shared with no performance cost

### Motion Runtime
Shared runtime with Objective-C   
Foundation framework   
Interact directly with SDK   

### Myths
Can I code using RubyMotion without the pain to learn Cocoa Framework?

PhoneGap like tools are much easier to learn what advantage do I get with RubyMotion?   

#### PhoneGap
*Pros*
 * Very easy to get started because its fimiliar

*Cons*
 * Its a bridge and therefore a performance bottleneck
 * Single thread model
 * 1/4 of the performance you get in a native application
 * Limited support of APIs
 * Debugging becomes extremely difficult

### Download and install
`$ motion`   
`$ motion create gogaruco`   
`$ rake`   
`$ rake config`   

`AppDelegate` is entry point to application   
Frameworks are those available from Cocoa   
You can use app.file_dependencies to tell build process which files to compile first

### The Soul of RubyMotion
Console REPL - Read Eval Print Loop   
You feel in control and moment of happiness

### Build Process
Compiling   
 * Build assembly language/machine code
Linking   
Packaging   
 * Copies executable files
Code Sign
 * Only required when you push to app store

### Testing your Code
RubyMotion comes bundled with MacBacon which is like RSpec   
MacBacon has almost all of RSpec API
 * Assertions
 * Matchers
 * before/after blocks
 * View testing

### Continuous Integration
Dev > GitHub web hook > Jenkins CI > Locally installed App Store > Install/update devices

### Using External Tools
RubyGems   
 * Don't work because RubyMotion gems have to be statically compiled
 * Have to use RubyMotion gems
 * Many RubyMotion gems
     * Bubblewrap
     * teacup
       * View stylesheet
     * sugarcube
     * formotion
Bundler   
Objective-C   
 * app.vendor_project
Native C code   
 * Use BridgeSupport to get Complex C data structures to RubyMotion
CocoaPods   
 * dependency manager for Objective-C
 * declare dependencies in Rakefile

### RubyMotion is brand new
No debugger because of REPL   
Some dynamic code doesn't work   

toamitkumar@gmail.com for 15% discount of RubyMotion

## External Links

* [Slides](http://www.slideshare.net/toamitkumar/rubyizing-ios-development)
