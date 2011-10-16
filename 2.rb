require 'fibs'
require 'lazy_enum'

puts series { |n| fib n }.lazy_select { |fib| fib.even? }.take_while { |even_fib| even_fib < 4000000 }.inject(:+)