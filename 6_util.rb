require 'five_leaves/lazy_enum'
require '12_util'
require 'five_leaves/sum'

def sum_of_squares n
  series(1) { |x| x ** 2 }.take(n).sum
end

def square_of_sum n
  triangle(n) ** 2
end
