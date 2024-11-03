require 'five_leaves/lazy_enum'
require './14_util'
require 'five_leaves/maximize'

def n14
  FiveLeaves.maximize { |x| chain_length(x) }
end
