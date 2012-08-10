require './enum_util'

class Marks
  def initialize n
    @n = n
    @marked_numbers= (0..n).map { |x| x }
  end

  def mark x
    @marked_numbers[x] = 'x'
  end

  def find_first_unmarked n=0
    @marked_numbers[n+1..-1].find { |x| x != 'x' }
  end

  def mark_multiples p
    (p..(@n / p)).each { |i| mark(i*p) }
  end
end

def find_primes upto
  marks = Marks.new upto
  primes = []
  p = 2
  while p && primes << p
    marks.mark_multiples p
    p = marks.find_first_unmarked p
  end
  primes
end
