require 'five_leaves/lazy_enum'
require 'five_leaves/prime_util'

def triangle n
  n*(n+1)/2
end

def triangle_factors n
  if n.even?
    a = FiveLeaves.factors(n/2)
    b = FiveLeaves.factors(n+1)
  else
    a = FiveLeaves.factors(n)
    b = FiveLeaves.factors((n+1)/2)
  end
  a.map { |x| b.map { |y| x * y } }.flatten
end
