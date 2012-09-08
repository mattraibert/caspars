require '26_util.rb'
require 'five_leaves/maximize'

puts FiveLeaves.maximize(1..1000) { |x| cycle_length(x) }