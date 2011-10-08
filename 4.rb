require 'range_util'

puts (100..999).pairs.map { |pair| pair.first * pair.last }.select { |x| palindromic? x }.max