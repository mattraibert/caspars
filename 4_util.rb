def palindromic? n
  n = n.to_s
  (0..n.size).collect { |i| n[i] == n[-1-i] }.inject(true) { |sum, x| sum &&= x }
end

def pairs n, m
  (m..n).map { |x| ([x] * (n - m + 1)).zip (m..n) }.flatten(1)
end
