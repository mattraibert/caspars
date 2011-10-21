require 'lazy_enum'
require 'digits'

puts (2**1000).digits.inject(:+)
