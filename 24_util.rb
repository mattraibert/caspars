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
  (1..n).inject(:*) || 1
end
