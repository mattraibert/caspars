require 'minitest/autorun'
require '3_util'

class ThreeUtilTest < MiniTest::Unit::TestCase
  def test_find_first_finds_the_first_match
    assert_equal 2, [1,2,3,4].find_first { |x| x % 2 == 0 }
    assert_equal 4, [3,4].find_first { |x| x % 2 == 0 }
  end
end
