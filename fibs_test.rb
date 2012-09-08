require 'test_helper'
require 'fibs'

class FibsTest < Minitest::Test
  def test_fibs
    f = Fibs.new
    assert_equal 144, f.fib(12)
  end
end








