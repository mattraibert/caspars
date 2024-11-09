module Enumerable
  def undigits
    self.reverse.join.to_i
  end

  def rotations
    digits = self
    ret = []

    digits.length.times do |i|
      digits = digits.rotate
      ret << digits
    end
    ret
  end
end