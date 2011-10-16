require 'lazy_enum'

def sum_of_squares n
  series { |x| x ** 2 }.take(n).inject(:+)
end

def square_of_sum n
  (1..n).inject(:+) ** 2
end
