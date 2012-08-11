require './lazy_enum'
require './14_util'
require './maximize'

puts maximize { |x| chain_length(x) }
