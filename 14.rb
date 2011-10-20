require './lazy_enum'
require './14_util'

cc = ChainCache.new
10.times { puts (1..40_000).lazy_map { |x| puts x; [cc.chain_length(x),x] }.max[1] }
