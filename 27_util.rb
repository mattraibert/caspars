require './lazy_enum'
require './range_util'
require './prime_util'

def quadratic(a, b, n)
  n**2 + a * n + b
end

def how_many_consecturive_primes?(a, b)
  find { |n| !(quadratic(a, b, n)).prime? }
end
