require './test_helper'
require './24_util'

class TwentyFourUtilTest < Minitest::Test
  def test_permute
    assert_equal([[0]], permute([0]))
    assert_equal([[0, 1], [1, 0]], permute([0, 1]))
    assert_equal([[0, 1, 2], [0, 2, 1], [1, 0, 2], [1, 2, 0], [2, 0, 1], [2, 1, 0]], permute([0, 1, 2]))
  end

  def test_factorial
    assert_equal(1, factorial(1))
    assert_equal(2, factorial(2))
    assert_equal(6, factorial(3))
    assert_equal(24, factorial(4))
  end
end