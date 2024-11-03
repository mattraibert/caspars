require './27_util'
require 'five_leaves/maximize'

def n27
  b, c = FiveLeaves.maximize((-999..999).pair_with(1..999)) { |b, c| how_many_consecutive_primes?(b, c) }

  b * c
end
