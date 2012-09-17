From [[Gogaruco 2012]]

**Presenter:** John Downey

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

## Notes

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

