**Presenter:** Andrew Cantino &amp; Ryan Stout

## Bio

> Andrew Cantino (@tectonic) has been building web applications for over fifteen years.  Andrew has a Masters in Computer Science from Georgia Tech, where he focused on machine learning and artificial intelligence.  He has worked on Gmail at Google, on video search at CastTV, and recently spent two years practicing Agile software development at Pivotal Labs.  Andrew is currently VP of Engineering at Mavenlink.

> Ryan Stout has also been doing web development for fifteen years and has been working with Rails for the last six.  He runs a small web-consulting agency and has been involved in startups ranging from social gaming to online dating and domain search.  He spent the last year developing a stealth startup that uses both natural language processing systems and modern machine learning techniques.

## Abstract

> Many people know that machine learning techniques can facilitate learning from, and adapting to, noisy, real-world data, but aren't sure how to begin using them.   Starting with two real-world examples, we will introduce you to some libraries that bring machine learning techniques to your Rails applications.   We will then dive into the art of feature design, one of the first practical roadblocks that many people encounter when applying machine learning.  Feature design is the challenging, subtle, and often trail-and-error process of selecting and transforming the data you provide for your learning algorithm, and it is often the hardest part of using these techniques.  Our goal is for you to come out of this talk with the tools necessary to think about machine learning and how to apply it to your problems.

## Notes

### @jamesgary's notes
* ML is many different algorithms that predict data from other data using applied statistics
* It's not magic
* We get data (usually from web) and classify it
  * Spam/Ham
  * Appropriate/Inappropriate
  * Happy/Sad
  * Documents (gmail's importance filter)
  * Users (expertise, interests, likelihood of paying
* Algorithms
  * Decision Tree Learning
  * Support Vector Machines (SVMs)
    * Good for any classification with fewer than ~2000 features
    * 2d graph, find vector that best separates ham from spam
  * Naive Bayes
    * Break documents into words and treat each word as an independent feature
    * Easy to implement
  * Neural Nets
    * (actually not so great)
    * Input lyaer (features), Hidden layer, Output layer (classification)
    * Very hard to understand, hard to interpret
    * Basically, runs input through bunch of algorthims (layers) to give a final score
    * 'Black magic'
* Curse of dimensionality
  * The more features and labels that you have, the more data that you need
* Overfitting
  * With enough parameters, anything is possible
  * We want our algorithms to generalize and infer, not memorize specific training examples
  * We test on different data than we train on
  * Average away any bias (cross-validation)
* Sentiment Classification
  * Companies search their product on twitter and see happy vs dissatisfied tweets
  * Training data
    * Tweets
    * Positive/negative
      * Use emoticons from twitter as labels
  * Features: Bag of words model
    * Ignores sentence structure, grammar
    * Just looks at words
    * Split text into words, create dictionary, and replace text with word counts
  * WEKA - Java app, open source, has common ML algs, gui interface, can access it from jruby
    * helps with converting words into vectors, training, cross-validation, buncha metrics
  * ARFF File: Kinda like a CSV file, with more header/annotation
  * Improving:
    * Bigger dictionary
    * Big-grams/tri-grams
      * Using more than one word at a time
      * Phrases, not words (so it catches combinations like "don't like")
      * Part of speech tagging (nouns, verbs, etc)
      * More data
  * Domain Price Prediction
    * Training data
      * domains
      * historical sale prices for domains
      * Features
        * split domain by words
        * generate feature for weach word
          * how common the word is
          * number of google results for each word
          * cpc for the word
      * Algorithm
        * support vector regression
          * functions > SMOreg in weka
* What we didn't cover
  * Collaborative filtering
  * Clustering
  * Theorem proving (classic AI)

## Discussion

* I could see this being really useful for metrics demanded by a lean startup model
=======
### @danbernier's notes

This will be a survey/intro talk: make you Machine-Learning-aware

ML: Predicting data from other data, using applied stats

Classification: determining which category a thing belongs in.

#### Decision tree learning

Simple predicates, in a tree, created by a machine, from looking at a
corpus of data. Leaf-nodes are probabilities of a certain outcome.
(Can you re-balance a decision tree?)

#### Support Vector Machines (SVMs)

Find a vector between data points, to "clump" them.
libsvm: a library w/ ruby bindings for doing this

#### Naive Bayes

Break a document into words - each is an "independent feature" (even
though "viagra" always goes with "canadian pharmacy"). (It still works
pretty well, despite that.)

Each word has a count, & a probability, for occurring in spam, & in
ham. Combine these with Bayes' formula. (The percentages are "spam
with this word," and "ham with this word;" that's why they're not
inverses of each other.)

#### Neural Nets

3 layers: input (features), hidden, output (classification)

They're hard to understand: weights on hidden nodes you can't
understand. They tend to over-fit the data. You have to pick HOW MANY
hidden layers to have.

####

##### Curse of Dimensionality

"The more featurs & labels you have, the more data you need." Ie, you
have a bigger possibility-space to fill. It's not totally true, but
it's close enough.

##### Over-fitting

"With enough parameters, anything is possible" - we want our
algorithms to generalize, not memorize. THIS is why we test on a
different corpus than we train on.

(Cross-validation: split your corpus into testing & training slices.)

Example: they wanted a camoflaged-tank classifier, but they got a
cloudy-day classifier. (TODO fill that out.)


#### Sentiment Classification

Example: search for your company's name on twitter, & classify as
positive/negative.

Alternative to manual classification: use emoticons. :) -> positive,
:( -> negative. Do this on generic tweets, not just ones in your
corpus.

"Bag of words" model: ignores sentence structure, word order, etc.
Split text into words, create a dictionary (you only keep so many
words; you remove some of them), replace text w/ word counts.

Tweets: "I ran fast", "Bob ran far", "I ran to Bob"
Dictionary: %w[I ran fast bob far to}
word vectors: [111000]  (Basically, the counts, in binary)
Pump those word vectors through ... (missed it, sorry)

WEKA: open source java app w/ common ML algorithms

Evaluating your ML:
* correctly classified?
* mean squared error: how far off was it?

Confusion Matrix: measures false positives & false negatives




## External Links

* [WEKA](http://www.cs.waikato.ac.nz/ml/weka/)
* [Ryan Stout's example, on github](https://github.com/ryanstout/mlexample)
* [Standford machine learning class](mi-class.org)
* weka
* libsvm, liblinear
* vowpal wabbit (big dictionaries)
* recommendify
