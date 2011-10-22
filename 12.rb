require './12_util'
require './prime_util'
require './enum_util'
require './lazy_enum'

puts triangle find { |x| triangle_factors(x).size >= 500 }
