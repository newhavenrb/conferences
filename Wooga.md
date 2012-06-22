Wooga
=====

Problem
-------

* 100,000 DB ops / second
* 40,000 DB ops / second
* Has to go to disk, can't use cache

Solution
--------

* shard by facebook user id
* EC2, using Scalarium

* Be careful with your data
