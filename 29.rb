require 'range_util'

puts (2..100).pairs.map { |n, e| n ** e }.uniq.size