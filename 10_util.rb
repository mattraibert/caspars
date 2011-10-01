require '5_util'

class Marks
  def initialize n
    @n = n
    @marked_numbers= (0..n).map {|x| x }
  end

  def mark x
    @marked_numbers[x] = 'x'
  end

  def find_first_unmarked n=0
    @marked_numbers[n+1..-1].find_first {|x| x != 'x' }
  end

  def mark_multiples p
    (p..(@n / p)).each do |i|
      mark(i*p)
    end
  end
end

