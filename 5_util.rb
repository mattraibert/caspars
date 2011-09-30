class Range
  def find_first
    each do |x|
      return x if yield x
    end
  end
end

class Array
  def includes_match?
    each { |x| return true if yield x }
    false
  end
end
