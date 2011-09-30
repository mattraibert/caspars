require 'minitest/autorun'
require '5_util'

class FiveUtilTest < MiniTest::Unit::TestCase
  def test_includes_match
    assert [1,2,3].includes_match? { |x| x == 3 }
    assert ![1,2,3].includes_match? { |x| x == 4 }
  end
end