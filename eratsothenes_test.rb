require './test_helper'
require './eratsothenes'

class EratsothenesTest < MiniTest::Unit::TestCase
  def test_marks
    marks = Marks.new 10
    marks.mark(2)
    marks.mark(3)
    marks.mark(4)
    assert_equal 5, marks.find_first_unmarked(2)
    assert_equal 7, marks.find_first_unmarked(6)
  end

  def test_mark_multiples
    marks = Marks.new 10
    marks.mark_multiples 2
    assert_equal 3, marks.find_first_unmarked(2)
    assert_equal 7, marks.find_first_unmarked(5)
  end

  def test_find_first_unmarked_returns_false_after_list
    marks = Marks.new 10
    assert_equal false, marks.find_first_unmarked(10)
  end

  def test_find_primes
    assert_equal [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89], find_primes(90)
  end
end
