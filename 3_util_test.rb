require 'minitest/autorun'
require '3_util'

class ThreeUtilTest < MiniTest::Unit::TestCase
  def test_find_first_finds_the_first_match
    assert_equal 2, [1,2,3,4].find_first { |x| x % 2 == 0 }
    assert_equal 4, [3,4].find_first { |x| x % 2 == 0 }
  end

  def test_small_factors_skips_factors_above_sqrt
    assert_equal [2,1], small_factors(6)
    assert_equal [2,1], small_factors(14)
  end

  def test_factors_finds_all_factors
    assert_equal [6,3,2,1], factors(6)
    assert_equal [14,7,2,1], factors(14)
  end
end



