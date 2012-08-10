require './lazy_enum'
require './12_util'
require './sum'

def sum_of_squares n
  series(1) { |x| x ** 2 }.take(n).sum
end

def square_of_sum n
  triangle(n) ** 2
end
