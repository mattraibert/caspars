require './test_helper'
require '7_util'

class SevenUtilTest < MiniTest::Unit::TestCase
  def test_find_next_prime
    assert_equal 5, find_next_prime(3)
    assert_equal 13, find_next_prime(11)
  end
  
  def test_find_prime
    assert_equal 13, find_prime(6)
  end
end
