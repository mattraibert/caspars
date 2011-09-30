def palindromic? n
  n = n.to_s
  (0..n.size).collect { |i| n[i] == n[-1-i] }.inject(true) { |sum, x| sum &&= x }
end

def pairs n, m
  (m..n).map { |x| ([x] * (n - m)).zip (m..n) }.flatten(1)
end

puts pairs(999,100).map { |pair| pair[0] * pair[1] }.select { |x| palindromic? x }.max