require './lazy_enum'
require './enum_util'

def palindromic? n
  n = n.to_s
  !(0..n.size/2).includes_match? { |i| n[i] != n[-1-i] }
end

class Range
  def stutter
    (size * size).times.lazy_map {|x| first + (x / size) }
  end

  def squared
    (size * size).times.lazy_map {|x| first + (x % size) }
  end

  def pairs
    stutter.lazy_zip squared
  end

  def * n
    (size * n).times.lazy_map { |x| first + (x % size) }
  end

  def ** n
    (size * n).times.lazy_map { |x| first + (x / n) }
  end

  def pair_with range
    (self * range.size).lazy_zip(range ** self.size)
  end
end
