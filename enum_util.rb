module Enumerable
  def find_first
    find { |x| yield x } || nil
  end

  def includes_match?
    each { |x| return true if yield x }
    false
  end

  def all_match?
    find { |x| return false if not yield(x) }
    true
  end
end
