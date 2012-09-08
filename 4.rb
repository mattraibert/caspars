require 'five_leaves/range_util'
require 'five_leaves/palindromic'

puts (100..999).pairs.map { |pair| pair.inject(:*) }.select { |x| FiveLeaves.palindromic? x }.max