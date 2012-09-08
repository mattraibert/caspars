require 'five_leaves/prime_util'
require "five_leaves/sum"

puts (1..999).select { |x| 3.divides?(x) or 5.divides?(x) }.sum
