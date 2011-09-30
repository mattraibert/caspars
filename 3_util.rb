def divides? x, y
  y % x == 0
end

def factors n
  (Math.sqrt(n).truncate.downto 1).select { |x| divides? x, n }
end

def prime? n
  n != 1 && factors(n).size == 1
end

def prime_factors n
  factors(n).select { |x| prime? x }
end