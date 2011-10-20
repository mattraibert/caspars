require './lazy_enum'
require './14_util'

puts (1..1_000_000).map { |x| [chain(x).size, x] }.max[1]
