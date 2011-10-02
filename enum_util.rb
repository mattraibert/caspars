module Enumerable
  def find_first
    each { |x| return x if yield x }
    false
  end

  def includes_match?
    each { |x| return true if yield x }
    false
  end
end
