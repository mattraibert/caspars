require './test_helper'
require './maximize'
require './27_util'

class MaximizeTest < MiniTest::Unit::TestCase
  def test_maximize
    assert_equal 5, maximize(-10..10) { |x| (x - 5) * (-x + 5) }
    assert_equal 5, maximize(-10..10) { |x| -x*x + 10*x }
    assert_equal 10, maximize(-10..10) { |x| -x*x + 25*x }
  end
end