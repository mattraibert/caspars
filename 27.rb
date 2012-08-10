require './27_util'
require './maximize'

a, b = maximize((-999..999).pair_with(1..999)) { |a, b| how_many_consecutive_primes?(a, b) }

puts a * b
