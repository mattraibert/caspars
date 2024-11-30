require './test/test_helper'
require './42_util'

class FortyTwoUtilTest < Minitest::Test
  def test_alphapos
    assert_equal(1, alphapos(?a))
    assert_equal(19, alphapos(?s))
    assert_equal(11, alphapos(?k))
    assert_equal(25, alphapos(?y))
  end

  def test_pos_sum
    assert_equal(55, pos_sum("sky"))
  end

  def test_triangle?
    assert(triangle?(36))
    assert(triangle?(45))
    assert(!triangle?(46))
    assert(triangle?(55))
    assert(triangle?(66))
    assert(!triangle?(54))
    assert(!triangle?(56))
  end
end