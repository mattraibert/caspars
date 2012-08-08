require './eratsothenes'

puts find_primes(2_000_000).inject(:+)