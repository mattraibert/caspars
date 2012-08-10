require './test_helper'
require 'enum_util'

class EnumUtilTest < MiniTest::Unit::TestCase
  def test_includes_match
    assert [1,2,3].includes_match? { |x| x == 3 }
    assert ![1,2,3].includes_match? { |x| x == 4 }
  end

  def test_all_match
    assert [3,6,9].all_match? { |x| x % 3 == 0 }
    assert ![3,4,5].all_match? { |x| x % 3 == 0 }
  end
end