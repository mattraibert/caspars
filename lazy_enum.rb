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
end

def series(init=0, &block)
  (init..(1.0/0.0)).lazy_map {|x| yield x}
end
