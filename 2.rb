require 'fibs'
require 'five_leaves/lazy_enum'
require 'five_leaves/sum'

puts series { |n| fib n }.lazy_select { |fib| fib.even? }.take_while { |even_fib| even_fib < 4000000 }.sum