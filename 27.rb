require '27_util'
require 'maximize'

b, c = maximize((-999..999).pair_with(1..999)) { |b, c| how_many_consecutive_primes?(b, c) }

puts b * c
