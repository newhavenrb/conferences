**Presenter:** Andrew Cantino &amp; Ryan Stout

## Bio

> Andrew Cantino (@tectonic) has been building web applications for over fifteen years.  Andrew has a Masters in Computer Science from Georgia Tech, where he focused on machine learning and artificial intelligence.  He has worked on Gmail at Google, on video search at CastTV, and recently spent two years practicing Agile software development at Pivotal Labs.  Andrew is currently VP of Engineering at Mavenlink.

> Ryan Stout has also been doing web development for fifteen years and has been working with Rails for the last six.  He runs a small web-consulting agency and has been involved in startups ranging from social gaming to online dating and domain search.  He spent the last year developing a stealth startup that uses both natural language processing systems and modern machine learning techniques.

## Abstract

> Many people know that machine learning techniques can facilitate learning from, and adapting to, noisy, real-world data, but aren't sure how to begin using them.   Starting with two real-world examples, we will introduce you to some libraries that bring machine learning techniques to your Rails applications.   We will then dive into the art of feature design, one of the first practical roadblocks that many people encounter when applying machine learning.  Feature design is the challenging, subtle, and often trail-and-error process of selecting and transforming the data you provide for your learning algorithm, and it is often the hardest part of using these techniques.  Our goal is for you to come out of this talk with the tools necessary to think about machine learning and how to apply it to your problems.

## Notes

### @jeffblasius' Notes

#### Andrew

* An introduction to machine learning, not a Ph.D
* What is machine learning? Taking data to learn and produce more data.
* Web data. Classification (spam or ham?)
* Gmail's importance filter (sort), aardvark (route), amazon's reviews (classify).
* Algorithms
    * Decision tree learning - presence of words, routing classification of content.
    * Support Vector Machines - Accurate with small amounts of data. libsvm
    * Naive Bayes - Very accurate for its simplicity. Works well with a lot of data.
    * Neural Nets - Modeled after human brain. Hard to understand. Have a lot of caveats. Not obvious how they work. Black magic.
* Curse of Dimensionality - The more features or labels you have, the more data you need.
* Overfitting - generalize your data, don't have the algorithm memorize it. Question what your algorithm is learning?

#### Ryan

* Sentiment Classification/Analysis - Positive or negative learning.
* Features - Bag of words model. Convert text into word dictionary & count vector.
* Classifier
* Weka - open source java app. GUI. Many common ML algorithms. JRuby compatible.
* Evaluation - How well did we do? 
    * mean squared error is useful here.
    * Confution Matrix - looks at false positives and false negatives.
* How do we improve?
    * Bigger dictionary.
    * bi-grams and tri-grams - taking words in pairs or triplets. Picks up on negatives "I don't like" vs "I like".
    * Speech training (determinig nouns & adj. etc.)
* Feature Generation
    * What information would be valuable?
    * How would you do it?
    * Examples... Pricing a domain.
        * Google adword search.
        * Size of other similar domains.

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
* [Stamford's Machine Learning Class](http://ml-class.org)
* [Ryan Stout's example, on github](https://github.com/ryanstout/mlexample)

## Other Tools

* libsvm
* liblinear
* vowpal wabbit (big dictionaries)
* recommendify
