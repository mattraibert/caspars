require 'minitest/autorun'
require 'prime_util'

class PrimeUtilTest < MiniTest::Unit::TestCase
  def test_small_factors_skips_factors_above_sqrt
    assert_equal [2,1], small_factors(6)
    assert_equal [2,1], small_factors(14)
  end

  def test_factors_finds_all_factors
    assert_equal [6,3,2,1], factors(6)
    assert_equal [9,3,1], factors(9)
    assert_equal [14,7,2,1], factors(14)
    assert_equal [25,5,1], factors(25)
  end
end








