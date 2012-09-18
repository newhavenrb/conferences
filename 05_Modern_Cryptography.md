# Modern Cryptography
## John Downey [@jtdowney](https://twitter.com/jtdowney)

https://speakerdeck.com/u/jtdowney/p/cryptography-gogaruco

## Cryptography
1. Keep something secret
2. Authentication, message has not changed in transit
3. Identifcation, who sent this message

## Modern Cryptography
Based on hard math problems which aren't easy on classical computers  
Cryptography should be peer-reviewed   
Do not invent your algorithm!  
Stick go government standards which have been rigorously reviewed  
Key should always be private, but not algorithms (security through obscurity)   
Algorithms don't fail, but composing algorithms commonly fails  
Anytime you deal with Cryptography, you should be skeptic

## Recomendations
GET YOUR DATA INTO ONE OF THESE STATES, so you can use trusted patterns  

For data in transit
(see slides)

For data at rest
(see slides)

**NOTE: Disable TSL and SSL compression on your servers!**

## Where Cryptography Goes Wrong
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

   Current generation of hash functions return the interal state of a loop   
   They reveal to you exactly what happened inside the function   
   At the end, the value of internal variables become the output   
   (see slides)

   Recomendations to be resistent to Length Extension Attack   
   (see slides)

3. Password Storage
   sha1(password) is NOT CORRECT!
   Only useful for one way protection

   sha1(salt + password) randomizes
   (see slides)
   sha1 is extremely fast 

   Recomendation 
    * Use Adaptive Hashing such as bcrypt
    * has_secure_password
    * devise
    
  Make sure to callibrate number of iterations to tune how slow you want it to be

## Trust
Who actually verified fingerprint?   
Make sure the system youre connecting to is the system you want to connect to   
Trust on the internet is a very broken thing   
We can't rely on the user

## Krypt
Replace openssl bindings in Ruby because they are very bad   
Unified API to openssl or JAVA + SSL

Slides have tons of resources

## Questions
Clients can have SSL certificates   
Internal applications use it
Most users just want to see padlock icon

If all requests aren't behind ssl, an unprotected request can intercept a request and change the DOM.


