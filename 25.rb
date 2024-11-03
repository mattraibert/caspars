require './fibs'
require 'five_leaves/lazy_enum'

def n25
  f = Fibs.new
  FiveLeaves.find { |n| f.fib(n) > 10 ** 999 }
end