def pascal_next prev
  prev = [0] + prev + [0]
  prev.each_cons(2).map { |x, y| x + y }
end

def pascals n
  triangle = [[1]]
  n.times { triangle << pascal_next(triangle[-1]) }
  triangle
end

puts pascals(21 + 20)[-1].max
