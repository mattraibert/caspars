require './test_helper'
require './28_util'

class TwentyEightUtilTest < MiniTest::Unit::TestCase
  def test_sum_corners
    assert_equal(1, sum_corners(1))
    assert_equal(10, sum_corners(2))
    assert_equal(24, sum_corners(3))
    assert_equal(46, sum_corners(4))
    assert_equal(76, sum_corners(5))
    assert_equal(160, sum_corners(7))
  end
end