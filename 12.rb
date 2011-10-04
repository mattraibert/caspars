require '12_util'
require 'prime_util'
require 'enum_util'
require 'lazy_enum'

puts series { |i| triangle i }.find_first { |x| factors(x).size > 500 }
