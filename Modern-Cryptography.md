From [[Gogaruco 2012]]

**Presenter:** [[John Downey]]

## Bio

John Downey is a developer working at Braintree. Braintree helps
businesses accept credit card payments online with great development
tools and first class support. There he has worked on this highly
available infrastructure and integrations into the banking system. In
his free time he contributes to open source projects and mentors high
school students in the FIRST Robotics Competition.

## Abstract

Once the realm of shadowy government organizations, cryptography now
permeates computing. Unfortunately, it is difficult to get correct and
most developers know just enough to be harmful for their projects.
Together, we’ll go through the basics of modern cryptography and where
things can go horribly wrong.

Specific topics:

* Cryptographic primitives
* Secure password storage
* Subtle flaws that can leave you insecure
* Why you should use TLS/SSL and GPG instead

## Notes from @myronmarston

* Don't invent algorithms on your own.
* Stick to government standards.
* Even the experts screw it up most of the time!
* Where Crypto Goes Wrong
  * Random number generation
    * Kernel.rand is not cryptographically strong
    * In Ruby use `SecureRandom`
    * On linux, use `/dev/random` (blocks for entropy) or `/dev/urandom`
      (nonblocking)
  * Length extension attacks -- attack hash functions
    * Stop using MD5 and SHA1
    * Use SHA-256
    * Current generation of hash functions output the final state of a loop
    * For signatures, use HMAC-SHA-256
      * This is resistent to length extension attacks
  * Password storage
    * SHA1 - it's one way and only useful for verification, keeps pw
      away from prying eyes.
    * Later, salts were added.
       * Defeats pre-computed table.
       * Forces brute force attack against 1 password at a time.
       * Modern graphics card can calculate 2 billion graphics cards per
         second
    * Use adaptive hashing to make it slow (e.g. BCrypt)
       * You can tune it to make it slow
  * Trust
    * SSH RSA host key fingerprint
    * Trust on the internet is a broken thing.
* Krypt - github.com/krypt
  * Meant to replace Open SSL bindings in Ruby

## Notes from @simeonwillbanks

https://speakerdeck.com/u/jtdowney/p/cryptography-gogaruco

### Cryptography
1. Keep something secret
2. Authentication, message has not changed in transit
3. Identification, who sent this message

### Modern Cryptography
Based on hard math problems which aren't easy on classical computers  
Cryptography should be peer-reviewed   
Do not invent your algorithm!  
Stick go government standards which have been rigorously reviewed  
Key should always be private, but not algorithms (security through obscurity)   
Algorithms don't fail, but composing algorithms commonly fails  
Anytime you deal with Cryptography, you should be skeptic

### Recommendations
GET YOUR DATA INTO ONE OF THESE STATES, so you can use trusted patterns  
For data in transit
(see slides)

For data at rest
(see slides)

**NOTE: Disable TSL and SSL compression on your servers!**

### Where Cryptography Goes Wrong
What developers do wrong

1. Random number generation
   Kernal.rand is not a Cryptographically strong
   
   "Good Cryptography looks as good as bad Cryptography"
   
  See slides for recommendations

2. Length Extension Attacks
   They attack hash functions or fingerprints   
   Hash functions are one-way and not reversible   
   No two hash functions have the same output   
   Output is a fingerprint or digest   
   SHA-2 is current recommendation for hash functions

   Current generation of hash functions return the internal state of a loop   
   They reveal to you exactly what happened inside the function   
   At the end, the value of internal variables become the output   
   (see slides)

   Recommendations to be resistant to Length Extension Attack   
   (see slides)

3. Password Storage
   sha1(password) is NOT CORRECT!
   Only useful for one way protection

   sha1(salt + password) randomizes
   (see slides)
   sha1 is extremely fast 

   Recommendation 
    * Use Adaptive Hashing such as bcrypt
    * has_secure_password
    * devise
    
  Make sure to calibrate number of iterations to tune how slow you want it to be

### Trust
Who actually verified fingerprint?   
Make sure the system you're connecting to is the system you want to connect to   
Trust on the internet is a very broken thing   
We can't rely on the user

### Krypt
Replace openssl bindings in Ruby because they are very bad   
Unified API to openssl or JAVA + SSL

Slides have tons of resources

### Questions
Clients can have SSL certificates   
Internal applications use it
Most users just want to see padlock icon

If all requests aren't behind ssl, an unprotected request can intercept a request and change the DOM.
