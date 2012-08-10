#find the input in the range which maximizes the result of the block
def maximize(range = 1..1_000_000)
  (range).map { |x| [yield(x), x] }.max[1]
end
