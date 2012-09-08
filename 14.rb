require 'five_leaves/lazy_enum'
require '14_util'
require 'five_leaves/maximize'

puts maximize { |x| chain_length(x) }
