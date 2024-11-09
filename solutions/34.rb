require './factorial_util'

def digit_factorials(n)
  n.digits.lazy_map do |d|
    factorial(d)
  end
end

def curious?(n)
  return false if [1, 2].include? n
  digit_factorials(n).sum == n
end

def n34
  1_0000_000.times.map.select { |n| curious? n }.sum
end