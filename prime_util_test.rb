require './test_helper'
require './prime_util'

class PrimeUtilTest < Minitest::Test
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

  def test_proper_factors
    assert_equal [], proper_factors(1)
    assert_equal [1], proper_factors(2)
    assert_equal [3,2,1], proper_factors(6)
    assert_equal [3,1], proper_factors(9)
    assert_equal [7,2,1], proper_factors(14)
    assert_equal [5,1], proper_factors(25)
  end

  def test_prime_factors_finds_all_prime_factors
    assert_equal [3,2], prime_factors(6)
    assert_equal [7,2], prime_factors(14)
    assert_equal [5], prime_factors(25)
    assert_equal [7,2], prime_factors(28)
  end
end








