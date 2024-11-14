require './test/test_helper'
require './39_util'

class ThirtyNineUtilTest < Minitest::Test
  def test_right_triangles
    assert_equal([[5, 3, 4]], right_triangles(p: 12))
    assert_equal([[50, 30, 40], [51, 24, 45], [52, 20, 48]], right_triangles(p: 120))
  end
end
