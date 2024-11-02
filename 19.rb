require 'five_leaves/range_util'
require 'active_support'
require 'active_support/core_ext'

puts (1901..1999).pair_with(1..12).count {|x| Date.new(x[0], x[1], 1).monday? }
