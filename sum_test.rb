require './test_helper'
require './sum.rb'

class SumTest < MiniTest::Unit::TestCase
  def test_sum
    assert_equal 10, [1,2,3,4].sum
    assert_equal nil, [].sum
    assert_equal "abc", %w(a b c).sum
  end
end
