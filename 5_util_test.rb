require 'minitest/autorun'
require '5_util'

class FiveUtilTest < MiniTest::Unit::TestCase
  def test_product_of_primes
    assert_equal 2, product_of_primes(2)
    assert_equal 6, product_of_primes(3)
    assert_equal 6, product_of_primes(4)
    assert_equal 30, product_of_primes(5)
  end
end