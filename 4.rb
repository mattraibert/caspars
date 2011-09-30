def palindromic? n
  n = n.to_s
  (0..n.size).collect { |i| n[i] == n[-1-i] }.inject(true) { |sum, x| sum &&= x }
end
