require 'prime_util'
require 'eratsothenes'

def product_of_primes n
  find_primes(n).inject(:*)
end
