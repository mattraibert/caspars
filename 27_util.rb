# require 'five_leaves/lazy_enum'
# require 'five_leaves/range_util'
require 'prime'

def pow2(n)
  @cache_pow2 ||= []
  cached = @cache_pow2[n]
  if cached
    cached
  else
    @cache_pow2[n] = n ** 2
  end
end

def quadratic(a, b, c, n)
  a * pow2() + b * n + c
end

def how_many_consecutive_primes?(b, c)
  (0..(1.0 / 0.0)).find { |n| !(quadratic(1, b, c, n)).prime? }

  # FiveLeaves.find { |n| !(quadratic(1, b, c, n)).prime? }
end
