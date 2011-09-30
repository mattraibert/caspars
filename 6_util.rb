def sum_of_squares n
  (1..n).inject {|sum, x| sum += x ** 2 }
end

def square_of_sum n
  (1..n).inject(:+) ** 2
end
