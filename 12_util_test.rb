require './test_helper'
require './12_util'

class TwelveUtilTest < Minitest::Test
  def test_triangle
    assert_equal 28, triangle(7)
    assert_equal 55, triangle(10)
  end

  def test_triangle_factors
    (1..5).each do |x|
      assert_equal FiveLeaves.factors(triangle(x)).sort, triangle_factors(x).sort
    end
  end
end








