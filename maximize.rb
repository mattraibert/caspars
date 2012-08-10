def maximize(range = 1..1_000_000)
  (range).map { |x| [yield(x), x] }.max[1]
end
