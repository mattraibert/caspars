require 'minitest/autorun'
require 'enum_util'

class EnumUtilTest < MiniTest::Unit::TestCase
  def test_includes_match
    assert [1,2,3].includes_match? { |x| x == 3 }
    assert ![1,2,3].includes_match? { |x| x == 4 }
  end

  def test_find_first
    assert_equal 2, [1,2,3,4].find_first { |x| x % 2 == 0 }
    assert_equal 1, [1,2,3,4].find_first { |x| x % 2 == 1 }
    assert_equal 2, (1..4).find_first { |x| x % 2 == 0 }
    assert_equal 1, (1..4).find_first { |x| x % 2 == 1 }
    assert_equal false, (1..4).find_first { |x| x % 5 == 0 }
  end

  def test_all_match
    assert [3,6,9].all_match? { |x| x % 3 == 0 }
    assert ![3,4,5].all_match? { |x| x % 3 == 0 }
  end
end