**Presenter:** Daniel Azuma

## Bio

> Daniel Azuma is a Ruby developer specializing in geospatial technologies, computational geometry, graphics, and related fields. He is the author of RGeo and related gems commonly used for geospatial analysis in Ruby and Rails applications. He currently works as Chief Software Architect at Pirq, and blogs at daniel-azuma.com.

## Abstract

> It is no secret that location has become ubiquitous. Mobile GPS, available data sets, and easy-to-use mapping services have brought geospatial information within reach of web developers. Location already plays a significant role in many of the major services such as Twitter, Facebook, and Google, not to mention legions of startups.
>
> However, for those of us implementing more than the most trivial features, it is also true that location is challenging. A significant learning curve awaits us, involving spatial databases, coordinate systems, interchange formats, and plenty of math. Our Ruby-based tools lag a bit behind those available to our Java- and Python-oriented colleagues, and effective documentation is scarce.
>
> This presentation aims to jump-start Rails developers hoping to go beyond putting a few pushpins on a Google Map. Rather than spending a lot of time explaining the many concepts involved, we'll bypass the learning curve and jump straight into walking through code for a few nontrivial applications. The hope is that the conceptual knowledge will come naturally as a result of seeing it in action, but pointers to online resources will also be provided to fill in any gaps.
>
> A thorough understanding of Ruby, Rails, ActiveRecord, and SQL will be assumed. No prior knowledge of GIS or computational geometry will be required, though it may be helpful.

## Notes

### Setting up a rails app for geospatial features

* Software to install
    * libgeos, libproj: math libraries. Install from package manager
    * PostGIS: plugin for PostgreSQL. The "best" open source spatial database. MySQL not recommended because of limited feature set.
* Useful gems:
    * rgeo -- Spatial data types in Ruby
    * activerecord-postgis-adapter -- subclass of postgresql activerecord adapter that understands PostGIS
    * squeel -- activerecord enhancement that helps write spatial queries
* Additional configs required in database.yml.
    * See README for activerecord-postgis-adapter for instructions

### Loading and visualizing lots of point data

* Use geospatial data types provided by the database.
    * Separate lat and long columns not recommended because they don't let the database help you-- it's like using a string instead of the database's timestamp data type to store timestamp data.
* Spatial database indexes perform the same function as normal database indexes, but are internally more sophisticated because they have to do 2D.
* Necessary but unfortunate ceremony: need to tell RGeo what factory to use for spatial columns in activerecord models.
* Make sure you keep track of coordinate systems. If the input data is in a different coordinate system than your database, you have to transform the coordinates.
* Rectangle queries are often useful for map visualizations.
    * Thus it's a good idea for the data in the database to be in a projection, such as Mercator, that preserves rectangles.
    * The PostGIS "geography" data type (latitude and longitude) is often not a good idea for map visualizations because a map rectangle is not rectangular in geographic coordiantes.
* The "squeel" gem lets you write queries in Ruby syntax rather than interpolating SQL strings.
* Use heatmaps to visualize dense point data.
    * Javascript heatmaps are simple for real-time data. Several javascript libraries available.
    * Lots of data requires offline precomputation of the images, however-- that's harder

### Looking up the timezone for a location

* You can download polygons for timezone data, and query a database for which polygon contains a location.
    * Each timezone requires multiple polygons: has_many relationship
* The data to be downloaded is in Shapefile format
    * Binary data format that is a *de facto* standard
    * Consists of a stream of records, each containing a geometry and a set of attributes
    * Use rgeo-shapefile gem to read the file
* Query using the st_contains() SQL function
* The polygons for timezone databases cover only land masses, but timezones are still defined for nearby oceans
    * Specifically, timezones cover a country's "territorial waters" which (though lots of exceptions) often extend 12 nautical miles from the shore
* Extend the query to look for polygons within 12 nautical miles from a location.
    * Use the st_distance() SQL function in the query
    * You have to convert distances to Mercator projection, by scaling by the secant of the latitude.
* But st_distance queries are slow because PostGIS can't use the spatial index to speed up the query
    * So instead, create a circle of radius 12 nautical miles and look for polygons that intersect the circle.
    * Use st_buffer() to create the circle (actually a polygon approximation) and use st_intersects() to check intersection
* "Tall" tables (i.e. lots of rows) can be searched quickly using a database index, but spatial databases are often "fat" as well (i.e. each row has a lot of data).
    * This is because polygons are big and have lots of sides.
    * Recursively subdivide polygons to create smaller polygons and store them in separate rows. This makes the table taller but thinner and can speed up queries.
    * Need to test and benchmark to find the optimal polygon size.

## External Links

* [Slides on SpeakerDeck](http://speakerdeck.com/u/dazuma/p/getting-down-to-earth-geospatial-analysis-with-rails)
* [Other links and resources on Daniel's Blog](http://daniel-azuma.com/railsconf2012)
