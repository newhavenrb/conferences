Getting Started with JavaScript Testing
=======================================

* JS as a first class citizen -- it's real code

* integration: AJAX, complicated DOM, etc
  * Capybara is great for integration testing
  * Simulates user behavior
  * Switch seamlessly between drivers
    * JS targeted:
      * Selenium
      * Akephalos (HTMLUnit based, slower)
      * capybara-envjs (bad support)
      * capybara-webkit (unproven

      * can use rack-test to do non-JS

      * gem 'capybara-enjs'

        it 'does (with JS)', :js => true do
          # ...
        end
      
      * Can do in Cucumber too

      * Best Practices:
        * Helper modules (e.g. for things like sign_in_as(name))
        * Use selectors to get back in your domain language
        * Assert on things you can see
          * Not URLs
          * Not cookies
          * Not session
          * Not application state
          * This is less brittle, doesn't depend on underlying implementation
        * Use field labels, not field names
        * Use domain stuff, not implmenetation
* Unit testing: standaolone logic
  * Favorite: Jasmine
  * Stable, full featured, general purpose
  * Evergreen packages up Jasmine
  * Evergreen: /evergreen
  * Allows commandline testing
  * Evergreen:
    * Nice requires
    * Templates (HTML snippets)
    * toHaveElement (in spec_helper)
    * Does CoffeeScript based on filename

  * Suggestions
    * Testable JS code
    * Create abstractions
    * Keep consistent feel to JS (functional or OO, pick one)
    * Separate files (esp. with asset pipeline), not just application.js TODO
    * *Mostly* test event bindings, maybe integration, still experiment
    * Custom matchers are good
    * Isolate AJAX to avoid brittleness
    * Maybe mock AJAX
    * Simplify your DOM

* Qs
  * JSTestDriver?
  * Why have to click?


Testing
=======

* OBJECTS
* individual components key
* Jasmine: Scenario, Given, When, Then
* Act like a user
* Unit tests: systemic (internal quality)
* Can split into controllers, etc

