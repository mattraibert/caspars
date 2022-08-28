require './test_helper'
require './digits'

class DigitsTest < Minitest::Test
  def test_digits
    assert_equal [9,9,9,9], [*9999.digits]
    assert_equal [0,0,0,9], [*9000.digits]
  end
end
