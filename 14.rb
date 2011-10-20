require 'lazy_enum'
require '14_util'

cc = ChainCache.new
puts (1..1_000_000).lazy_map { |x| [cc.chain_length(x),x] }.max[1]
