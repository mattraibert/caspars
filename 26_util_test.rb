require 'test_helper'
require '26_util'

class TwentySixUtilTest < Minitest::Test
  def test_cycle_length
    assert_equal(1, cycle_length(3), recurring_cycle(3))
    assert_equal(6, cycle_length(7), recurring_cycle(7))
    assert_equal(0, cycle_length(2), recurring_cycle(2))
    assert_equal(1, cycle_length(6), recurring_cycle(6))
  end
end