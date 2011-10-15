require 'minitest/autorun'
require 'fibs'

class FibsTest < MiniTest::Unit::TestCase
  def test_fibs
    f = Fibs.new
    assert_equal 144, f.fib(12)
  end
end








