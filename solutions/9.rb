require 'five_leaves/range_util'
require 'five_leaves/lazy_enum'

def py_triplet? a, b, c
  (a < b && b < c) && (a**2 + b**2 == c**2)
end

def z pair
  1000 - pair.sum
end

def n9
  ((0..332).pair_with(1..499)).lazy_map { |pair| pair << z(pair) }.find { |triplet| py_triplet?(*triplet) }.inject(:*)
end
