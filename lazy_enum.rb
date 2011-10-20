module Enumerable
  def lazy_select(&block)
    Enumerator.new do |yielder|
      self.each do |element|
        yielder << element if yield(element)
      end
    end
  end

  def lazy_map(&block)
    Enumerator.new do |yielder|
      self.each do |element|
        yielder << yield(element)
      end
    end
  end

  def lazy_map_with_index
    Enumerator.new do |yielder|
      self.each_with_index do |element, index|
        yielder << yield(element, index)
      end
    end
  end
end

class Enumerator
  def lazy_zip with
    Enumerator.new do |yielder|
      loop do
        yielder << [self.next,with.next]
      end
    end
  end
end

class Array
  def tails
    lazy_map_with_index { |x,i| self[i..-1] }
  end
end

def series(init=0)
  (init..(1.0/0.0)).lazy_map {|x| yield x}
end

def find(init=0)
  (init..(1.0/0.0)).find {|x| yield x}
end
