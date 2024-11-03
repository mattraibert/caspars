require './12_util'
require 'five_leaves/prime_util'
require 'five_leaves/enum_util'
require 'five_leaves/lazy_enum'

def n12
  triangle FiveLeaves.find { |x| triangle_factors(x).size >= 500 }
end
