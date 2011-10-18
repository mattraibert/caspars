require 'lazy_enum'
require '14_util'

puts (1..1000000).map { |x| [x, chain(x).size] }.max { |one, another| one[1] <=> another[1] }[0]
