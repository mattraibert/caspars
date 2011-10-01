require '3_util'
require '4_util'
require '5_util'

subfactors = pairs(1..20).select do |pair|
  divides?(pair[0], pair[1]) && pair[0] != pair[1]
end

subfactors = subfactors.map {|pair| pair[0]}.uniq
required_factors = (1..20).select { |x| !subfactors.include?(x) }

pop = product_of_primes 20

puts pop * (1..(1.0/0.0)).find_first { |x|
  the_answer = x * pop
  (not required_factors.includes_match? { |factor| !divides?(factor, the_answer) } )
}
