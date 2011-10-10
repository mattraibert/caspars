require 'eratsothenes'
require 'prime_util'
require 'lazy_enum'

pop = find_primes(20).inject(:*)

puts series(1) { |x| x * pop }.find { |p| (11..20).all_match? { |factor| factor.divides?(p) } }
