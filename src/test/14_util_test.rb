require './test/test_helper'
require './14_util'

class FourteenUtilTest < Minitest::Test
  def test_chain_length
    assert_equal 1, chain_length(1)
    assert_equal 2, chain_length(2)
    assert_equal 10, chain_length(13)
  end
end
