def factorial(n)
  @factorials ||= { 0 => 1, 1 => 1 }
  cached = @factorials[n]
  return cached if cached

  i, f = n.downto(1).lazy_map { |i| [i, @factorials[i]] }.find { |i, f| f }

  f2 = ((i + 1)..n).inject(:*)
  fact = f * f2
  @factorials[n] = fact
end
