require './test/test_helper'
require './35_util'

class ThirtyFiveUtilTest < Minitest::Test
  def test_undigits
    assert_equal(123, 123.digits.undigits)
    assert_equal(999, 999.digits.undigits)
    assert_equal(123, [3, 2, 1].undigits)
  end

  def test_rotations
    array = [1, nil]
    assert_equal([[nil, 1], [1, nil]], array.rotations)
    assert_equal([1, nil], array)
    assert_equal([[2, 1], [1, 2]], [1, 2].rotations)
    assert_equal([[2, 3, 1], [3, 1, 2], [1, 2, 3]], [1, 2, 3].rotations)
    assert_equal([[2, 3, 4, 1], [3, 4, 1, 2], [4, 1, 2, 3], [1, 2, 3, 4]], [1, 2, 3, 4].rotations)
  end
end