require 'lazy_enum'

def palindromic? n
  n = n.to_s
  (0..n.size).collect { |i| n[i] == n[-1-i] }.inject(true) { |sum, x| sum &&= x }
end

class Range
  def size
    last - first + 1
  end
  
  def stutter
    (size * size).times.lazy_map {|x| first + (x / size) }
  end

  def squared
    (size * size).times.lazy_map {|x| first + (x % size) }
  end

  def pairs
    stutter.lazy_zip squared
  end
end
