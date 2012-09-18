# Deploy, Scale and Sleep at Night with JRuby
## Joe Kutner
@codefinger

Difference between trains and cars is very similiar to difference between JRuby and MRI deployment systems

## Ruby on the JVM
You can write pure Ruby apps and run them on the JVM
Integrating with java is optional
"Deploying with JRuby" has no Java or XML!
Charlie writes Java code, so developers don't have to
JRuby is the same as MRI at runtime

A sysadmin will notice difference between JRuby and MRI
The sysadmin will now get to sleep at night

A problem we introduce is normally cleaned up by sysadmin
This typically happens during deployment

There problems are root in general architecture (see slides)
Handle multiple HTTP requests with proxy in front of pool of resources
Problems:
  1. Memory growth, more copies means heavier system
  2. Now we have to balance processes, introduce god to monitor and
     restart one at a time, rolling restarts, process management issues
  3. Replicated session state, database connection pools

Like copying cars when we need a new car

What is the root cause? Its the GIL!!! (see slides)
Matz won't remove GIL. Its there because Matz doesn't want that type of platform.
Concurrency is hard! Matz eliminates it to keep developers happy.

The JVM solves the Concurrency problem.
  Single process
  Single application instance
  Multiple execution threads handle request
  More like train!

  This scales easier and is more performant (see slides for data)
  MRI servers flatline when they reach the level all their processes can handle

*Still a nagging questions with JRuby:*

How do I get my applications into the real world?
  * JRuby lint gem `$ jrlint`

How do I handle deployment?
  * Package entire application into a single file as a unit for
    deployment
  * Clustering
  * 3 Strategies implemented by 3 different technologies: Warbler,
    Trinidad and Torquebox

### Warbler
war produces a war file which is a zip file that runs a bunch of conventions to package an application to a single file
tomcat or jetty can run war files

Inversion of control
  Container is run and deploy applications to it
  We can hot deploy without bringing down server!
  Can deploy multiple applications into a single server which allows separation of concerns by small components

Pros
  War files are very portable!
  War files can be encrypted
  Deployment process is quicker because there is no need for bundle install
  War files are very consistent
  
Cons
  You don't want to generate war file for each development task
  We are using lots of Java tools and this is tough
  
### Trinidad
Still takes advantage of "inversion of control"

Pros
  Can still use cap so a lot more like MRI deployment
  Has a rich extension library!

Cons
  We aren't maximizing the JVM because it feels more like MRI

### Torquebox
Feels comfortable and familiar but flexes the JVM
Installs as gem and gives you a tool
Real power comes its subsystems which make it an application server
It can run messaging or daemons; its not just for web apps
The most powerful subsystem is a Cluster

*Cluster is a set of servers running in parrallel and communicating with each other*

This scales very well!

## Decision Time
You have to look at People, Processes and Technologies within your organization

Do you have MRI people or Java people?
Should development mirror production?
Which technologies do you already use?

THE END
Your sysadmin will love you

NOTES
http://pragprog.com/book/jkdepj/deploying-with-jruby
coupon: JRubyGoGaKutner



