require 'five_leaves/lazy_enum'
require 'five_leaves/prime_util'

def triangle n
  n*(n+1)/2
end

def triangle_factors n
  if n.even?
    a = factors(n/2) 
    b = factors(n+1)
  else
    a = factors(n) 
    b = factors((n+1)/2)
  end
  a.map { |x| b.map { |y| x * y } }.flatten
end
