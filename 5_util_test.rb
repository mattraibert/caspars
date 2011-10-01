require 'minitest/autorun'
require '5_util'

class FiveUtilTest < MiniTest::Unit::TestCase
  def test_includes_match
    assert [1,2,3].includes_match? { |x| x == 3 }
    assert ![1,2,3].includes_match? { |x| x == 4 }
  end

  def test_find_first
    assert_equal 2, [1,2,3,4].find_first { |x| x % 2 == 0 }
    assert_equal 1, [1,2,3,4].find_first { |x| x % 2 == 1 }
    assert_equal 2, (1..4).find_first { |x| x % 2 == 0 }
    assert_equal 1, (1..4).find_first { |x| x % 2 == 1 }
    assert_equal nil, (1..4).find_first { |x| x % 5 == 0 }
  end

  def test_product_of_primes
    assert_equal 2, product_of_primes(2)
    assert_equal 6, product_of_primes(3)
    assert_equal 6, product_of_primes(4)
    assert_equal 30, product_of_primes(5)
  end
end