require 'five_leaves/range_util'
require 'five_leaves/palindromic'

def n4
  (100..999).pairs.map { |pair| pair.inject(:*) }.select { |x| FiveLeaves.palindromic? x }.max
end