require 'five_leaves/lazy_enum'
require 'five_leaves/range_util'
require 'prime'

def quadratic(a, b, c, n)
  a * n**2 + b * n + c
end

def how_many_consecutive_primes?(b, c)
  FiveLeaves.find { |n| !(quadratic(1, b, c, n)).prime? }
end
