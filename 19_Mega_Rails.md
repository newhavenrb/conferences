# Mega Rails
# MonoRail: Monolithic Rails Application
## Jack Danger Canty

## Intro
Common pattern from inception to hugh app

1. Rails apps go in the same direction, but it can be corrected
2. The problem is primarily about ownership

## Greenfield app
(see slides)

## MonoRail
(see slides)

## Actual Scaling Problems
(see slides)
Scaling data
  Data structure
Codebase
  GitHub
Customers
Feature Count
Developer Headcount
  No pattern in the community to help us do this

## First day of greenfield development
Rails can do everything! Lets make it do everything!
You have to test your product in the market, so Rails gets us their quickly
We get MonoRails because we keep on going and validating product in market

## What is the problem?
Rails is optimized to getting up and going quickly
Makes your first 30 days magical, but its not optimized for 3 years into development
All software has tradeoffs

(See Young & Mature slides)
Postgres is super fast and doesn't have to do copy on write when adding a new column
ActionMailer should be a mail service not a part of your Rails app
User should be only authentication
Abstract libraries to internal gems these are dependencies not your application 
You need database validations 
Log every significant action
Analyze your data not in production!
  Extract to a replica
  ETL http://en.wikipedia.org/wiki/Extract,_transform,_load
  Get data out of relational database

## Conway's Law
"The shape of your people defines the shape of the products they make"
There is a reason these Rails apps fail which is both techincal and emotional
If you fail, you should take ownership and make amends
Your effort combined with your skill, you can make it right
Energy combined with skill produces success
The problem is you could still fail because of interaction with others on the project
Rails can grow and be split, but it'll take foresight
We should work on ownership
The moment you split one team into small teams you get a MonoRail

## Closing
Three Step Process for taking ownership on pieces of code and abstracting
1 is the same
2 & 3 will vary from organization, product and use cases

1. Build a service interfaces inside your app, internal APIs
  Just pass data to services interfaces which is resilient to change
  (See slides for simple examples)

2. Extract the code
  Copy the app and delete pieces you don't need, but nothing has really changed!
  You could start over from scratch

3. Move the data
  You can talk to a replicate

There is a real human cost for not realizing we need these human
services immediately. As soon as we split our one team into multiple
teams, we should go into work and be happy everyday and not just debug a
MonoRail.

MegaRails is a poor job of optimizing happiness.


















