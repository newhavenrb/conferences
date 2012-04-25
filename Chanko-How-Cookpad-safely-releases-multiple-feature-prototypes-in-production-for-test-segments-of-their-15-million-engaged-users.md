**Presenter:** Kenta Murata

## Bio

> Kenta Murata is an Engineer at Cookpad in Tokyo, Japan. He is also a Ruby committer maintaining the bigdecimal library.

## Abstract

> Chanko provides a simple framework for rapidly and safely prototyping new features in your production Rails app, and exposing these prototypes to specified segments of your user base.
>
> With Chanko, you can release many concurrent features and independently manage which users see them. If there are errors with any chanko, it will be automatially removed, without impacting your site.
>
> Chanko was extracted from Cookpad.com where the team uses it daily to test new features live, in production, on the largest Rails site in Japan which serves 500 million page views a month to a user based of over 15 million highly engaged uses.

## Notes

### from @james_gary

* Cookpad
  * 15m monthly unique users
  * 500m monthly page views
  * 40 engineers
  * Running Ruby REE, Rails 3.0
  * AWS
* Chanko overview
  * Before chanko
    * Big ceremony before big public release
    * Difficult to evaluate value of things they built
    * After Chanko, they used lean and continuous deployment
    * Company thought releasing code could be low quality, break functionality
  * Three requirements
    * Stability
    * Quality
    * Faster development
  * How can we ensure these 3 requirements?
  * Chanko!
* What can Chanko do?
  * Release new features
  * If any errors raised, automatically rollbacked
  * rails generate chanko feature_name
    * app/units/feature_name/[\*.rb, assets, specs, views]
  * = invoke(:new_feature, :old_fallback_feature)
  * Staff sees new feature first, then users
* Live demo
  * Generated a new feature
  * Demonstrated it works
  * Added bug
  * Failed while in developer mode
  * Changed config to failover
  * Gracefully failover to previous functionality
  * See [Chanko on Github](https://github.com/cookpad/chanko) for more
* Differences from Engine
  * Chanko overwrites existing app feature
  * Engine provides independent feature
* Chanko at Cookpad
  * Unit Manager - High level view of different features in use
  * Able to cache with Varnish
  * Errors logged to database, can view based on features
* Tweet at @mrkn or @shingo (main contributor) if you have any questions

## External Links

* [Chanko on Github](https://github.com/cookpad/chanko)
