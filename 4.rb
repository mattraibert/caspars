require 'range_util'

puts (100..999).pairs.map { |pair| pair.inject(:*) }.select { |x| palindromic? x }.max