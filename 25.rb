require 'fibs'
require 'five_leaves/lazy_enum'

f = Fibs.new
puts FiveLeaves.find { |n| f.fib(n) > 10**999 }