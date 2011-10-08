require 'range_util'
require '5_util'
require 'prime_util'
require 'enum_util'

subfactors = (1..20).pairs.select do |pair|
  divides?(pair.first, pair.last) && pair.first != pair.last
end

subfactors = subfactors.map {|pair| pair.first}.uniq
required_factors = (1..20).select { |x| !subfactors.include?(x) }

pop = product_of_primes 20

first = (1..(1.0/0.0)).find_first do |x|
  the_answer = x * pop
  (not required_factors.includes_match? { |factor| !divides?(factor, the_answer) } )
end

puts pop * first
