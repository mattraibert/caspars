require 'five_leaves/range_util'

def n29
  (2..100).pairs.map { |n, e| n ** e }.uniq.size
end