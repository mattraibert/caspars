require './prime_util'

puts (1..999).select { |x| 3.divides?(x) || 5.divides?(x) }.inject(:+)
