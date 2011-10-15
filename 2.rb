require 'fibs'
require 'lazy_enum'

f = Fibs.new

puts series { |n| f.fib n }.lazy_select { |fib| fib.even? }.take_while { |even_fib| even_fib < 4000000 }.inject(:+)