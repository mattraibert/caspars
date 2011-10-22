require './fibs'
require './lazy_enum'

f = Fibs.new
puts find { |n| f.fib(n) > 10**999 }