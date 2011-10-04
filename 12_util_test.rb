require 'minitest/autorun'
require '12_util'

class TwelveUtilTest < MiniTest::Unit::TestCase
  def test_triangle
    assert_equal 28, triangle(7)
    assert_equal 55, triangle(10)
  end
end








