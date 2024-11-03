require './26_util.rb'
require 'five_leaves/maximize'

def n26
  FiveLeaves.maximize(1..1000) { |x| cycle_length(x) }
end