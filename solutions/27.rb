require './27_util'
require 'five_leaves/maximize'
def maximize(range = 1..1_000_000)
  (range).lazy_map do |x|
    [yield(x), x]
  end.max[1]
end

def n27
  pairs = (-999..999).pair_with(1..999)
  b, c = maximize(pairs) do |b, c|
    how_many_consecutive_primes?(b, c)
  end

  b * c
end
