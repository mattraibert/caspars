require 'lazy_enum'

def palindromic? n
  n = n.to_s
  (0..n.size).collect { |i| n[i] == n[-1-i] }.inject(true) { |sum, x| sum &&= x }
end

def pairs range
  range.pairs
end

class Range
  def stutter
    (last * last).times.lazy_map {|x| first + (x / last) }
  end

  def squared
    (last * last).times.lazy_map {|x| first + (x % last) }
  end

  def pairs
    (last * last).times.lazy_map {|x| [first + (x / last), first + (x % last)] }
  end
end
