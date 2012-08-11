require './lazy_enum'

#find the input in the range which maximizes the result of the block
def maximize(range = 1..1_000_000)
  (range).lazy_map { |x| [yield(x), x] }.max[1]
end
