module Enumerable
  def find_first
    find { |x| yield x } || false
  end

  def includes_match?
    each { |x| return true if yield x }
    false
  end
end
