class Integer
  def digits
    Enumerator.new do |yielder|
      a = self
      loop do
        a, digit = a.divmod 10
        yielder << digit
        raise StopIteration if a == 0
      end
    end
  end
end
