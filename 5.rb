require './eratsothenes'
require 'five_leaves/prime_util'
require 'five_leaves/lazy_enum'

pop = find_primes(20).inject(:*)

puts FiveLeaves.series(1) { |x| x * pop }.find { |p| (11..20).all_match? { |factor| factor.divides?(p) } }
