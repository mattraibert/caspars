require './test_helper'
require '12_util'

class TwelveUtilTest < MiniTest::Unit::TestCase
  def test_triangle
    assert_equal 28, triangle(7)
    assert_equal 55, triangle(10)
  end

  def test_triangle_factors
    (1..5).each do |x|
      assert_equal factors(triangle(x)).sort, triangle_factors(x).sort
    end
  end
end








