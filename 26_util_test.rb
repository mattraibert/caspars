require 'minitest/autorun'
require './26_util'

class TwentySixUtilTest < MiniTest::Unit::TestCase
  def test_cycle_length
    (1..1000).each do |n|
      puts digits(Rational(1, n), 100).inspect
    end
    assert_equal(6, cycle_length(Rational(1, 99)))
    assert_equal(1, cycle_length(Rational(1, 3)))
  end
end