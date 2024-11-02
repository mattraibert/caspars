require './test/test_helper'
require './6_util'

class SixUtilTest < Minitest::Test
  def test_sum_of_squares
    assert_equal 385, sum_of_squares(10)
  end

  def test_square_of_sum
    assert_equal 3025, square_of_sum(10)
  end
end