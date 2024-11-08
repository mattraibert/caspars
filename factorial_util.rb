def factorial(n)
  @factorials ||= { 0 => 1, 1 => 1 }
  if @factorials[n]
    return @factorials[n]
  end
  i, f = n.downto(1).lazy_map { |i| [i, @factorials[i]] }.find { |i, f| f }

  f2 = ((i + 1)..n).inject(:*)
  fact = f * f2
  puts "computed #{i + 1} to #{n}"
  @factorials[n] = fact
end
