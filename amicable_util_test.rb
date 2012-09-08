require 'test_helper'
require 'amicable_util'

class AmicableUtilTest < MiniTest::Unit::TestCase
  def test_sum_fact
    assert_equal 220, sum_fact(284)
    assert_equal 284, sum_fact(220)
    assert_equal 6, sum_fact(6)
    assert_equal 0, sum_fact(0)
  end

  def test_amicable?
    assert amicable? 220
    assert amicable? 284
    assert !amicable?(6)
    assert !amicable?(221)
  end
end