require 'lazy_enum'
require 'enum_util'

def palindromic? n
  n = n.to_s
  !(1..n.size/2).includes_match? { |i| n[i] != n[-1-i] }
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
