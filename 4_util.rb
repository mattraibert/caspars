def palindromic? n
  n = n.to_s
  (0..n.size).collect { |i| n[i] == n[-1-i] }.inject(true) { |sum, x| sum &&= x }
end

def pairs range
  range.map { |x| ([x] * (range.last - range.first + 1)).zip range }.flatten(1)
end








