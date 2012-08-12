require './test_helper'
require './31_util'

class ThirtyOneUtilTest < MiniTest::Unit::TestCase
  def test_make
    assert_equal([[10]], make_change(10, [1]))
    assert_equal([[5]], make_change(10, [2]))
    assert_equal([[1, 0], [0, 10]], make_change(10, [10, 1]))
    assert_equal([[5, 0], [4, 2], [3, 4], [2, 6], [1, 8], [0, 10]], make_change(10, [2, 1]))
  end
end