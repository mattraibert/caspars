require 'lazy_enum'
require '14_util'
require 'perf_util'

perf_time "" do
  cc = ChainCache.new
  puts (1..1_000_000).lazy_map { |x| [cc.chain_length(x),x] }.max[1]
end