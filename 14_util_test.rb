require './test_helper'
require '14_util'

class FourteenUtilTest < MiniTest::Unit::TestCase
  def test_chain
    assert_equal [13,40,20,10,5,16,8,4,2,1], chain(13)
  end
end
