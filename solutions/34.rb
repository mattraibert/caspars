require './factorial_util'

def digit_factorials(n)
  n.digits.lazy_map do |d|
    factorial(d)
  end
end

def curious?(n)
  return false if [1, 2].include? n
  digit_factorials = digit_factorials(n)
  digit_factorials.sum == n
end

def n34
  (1..10000000).select { |n| curious? n }.sum
end