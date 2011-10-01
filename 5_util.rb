require '3_util'

module Enumerable
  def find_first
    each { |x| return x if yield x }
    nil
  end

  def includes_match?
    each { |x| return true if yield x }
    false
  end
end

def product_of_primes n
  (1..n).select { |x| prime? x }.inject(1) { |product, x| product *= x }
end
