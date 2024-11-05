require 'five_leaves/lazy_enum'

def permutation(array, i)
  available_digits = array.dup
  ((available_digits.size - 1).downto 0).map do |x|
    f = (i / factorial(x)) % available_digits.size
    available_digits.delete(available_digits[f])
  end
end

def permute array
  factorial(array.size).times.map do |i|
    permutation(array, i)
  end
end

def factorial(n)
  @factorials ||= { 0 => 1, 1 => 1 }
  if @factorials[n]
    return @factorials[n]
  end
  i, f = n.downto(1).lazy_map { |i| [i, @factorials[i]] }.find { |i, f| f }

  f2 = ((i + 1)..n).inject(:*)
  fact = f * f2
  @factorials[n] = fact
end
