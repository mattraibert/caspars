class Integer
  def divides? dividend
    self != 0 && dividend % self == 0
  end

  def prime?
    self != 1 && small_factors(self).size == 1
  end
end

def small_factors n
  (Math.sqrt(n).truncate.downto 1).select { |x| x.divides? n }
end

def factors n
  [n] + ((n/2).truncate.downto 1).select { |x| x.divides? n }
end

def prime_factors n
  small = small_factors(n)
  (small.map { |f| n / f } + small).uniq.select { |x| x.prime? }
end
