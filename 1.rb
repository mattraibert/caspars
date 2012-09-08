require 'prime_util'
require "./sum"

puts (1..999).select { |x| 3.divides?(x) or 5.divides?(x) }.sum
