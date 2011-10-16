class Integer
  def divides? dividend
    dividend % self == 0
  end
end

def small_factors n
  (Math.sqrt(n).truncate.downto 1).select { |x| x.divides? n }
end

def factors n
  [n] + ((n/2).truncate.downto 1).select { |x| x.divides? n }
end

def prime? n
  n != 1 && small_factors(n).size == 1
end

def prime_factors n
  small_prime_factors = small_factors(n).select { |x| prime? x }
  (small_prime_factors.map { |p| n / p } + small_prime_factors).uniq
end
