require '26_util.rb'
require 'maximize'

puts maximize(1..1000) { |x| cycle_length(x) }