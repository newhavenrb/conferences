Confident Code
==============

* Timid code
  * Prone to digressions
  * Second-guessing itself
* Confident code
  * Intention
  * No provisos or digressions
  * Narrative
    * Gather input
    * Perform work
    * Deliver results
    * Handle failure
  * True duck typing is a confident style
  * If in doubt, coerce
  * to_a isn't in 1.9, use Array()
  

    require 'delegate' # Ruby std lib

    class WithPath < SimpleDelegator
      def path
        case 1
        case 2
        ...
      end
    end

  * Reject unexpected values outright
    * Assert your contract (no DbC framework needed)
    # NOTE raise Exception, message, caller # sets context to caller
  * Guard clause to short-circuit, avoids special cases later
    * Or... the Special Case pattern
    * NullObject pattern # Maybe()
    * Hash#fetch to give back a symbol
    * jQuery selectors are confident
  * Instead of returning nil, consider returning a NullObject or other Special Case object

  * Happy path first
  
  * rescue idiom
