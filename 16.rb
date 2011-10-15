require 'lazy_enum'

puts (2**1000).digits.inject(:+)
