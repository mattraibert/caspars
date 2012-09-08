require 'fibs'
require 'five_leaves/lazy_enum'

puts FiveLeaves.series { |n| fib n }.lazy_select { |fib| fib.even? }.take_while { |even_fib| even_fib < 4000000 }.sum