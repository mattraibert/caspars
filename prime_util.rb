def divides? x, y
  y % x == 0
end

def small_factors n
  (Math.sqrt(n).truncate.downto 1).select { |x| divides? x, n }
end

def factors n
  [n] + ((n/2).truncate.downto 1).select { |x| divides? x, n }
end

def prime? n
  n != 1 && small_factors(n).size == 1
end

def prime_factors n
  small_factors(n).select { |x| prime? x }
end