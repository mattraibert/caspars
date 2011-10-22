require './digits'

puts (2**1000).digits.inject(:+)
