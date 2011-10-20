require 'lazy_enum'
require '14_util'

cc = ChainCache.new
puts (1..50_000).lazy_map { |x| p x; [cc.chain_length(x),x] }.max[1]
