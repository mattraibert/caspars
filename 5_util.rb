require 'prime_util'

def product_of_primes n
  (1..n).select { |x| prime? x }.inject(:*)
end
