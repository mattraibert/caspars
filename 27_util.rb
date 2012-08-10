require './lazy_enum'
require './range_util'
require './prime_util'

def quadratic(a, b, c, n)
  a * n**2 + b * n + c
end

def how_many_consecutive_primes?(b, c)
  find { |n| !(quadratic(1, b, c, n)).prime? }
end
