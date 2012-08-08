require 'minitest/autorun'
require './24_util'

class TwentyFourUtilTest < MiniTest::Unit::TestCase
  def test_permute
    assert_equal([[0]], permute([0]))
    assert_equal([[0, 1], [1, 0]], permute([0, 1]))
    assert_equal([[0, 1, 2], [0, 2, 1], [1, 0, 2], [1, 2, 0], [2, 0, 1], [2, 1, 0]], permute([0, 1, 2]))
  end
end