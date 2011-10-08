require 'minitest/autorun'
require '4_util'

class FourUtilTest < MiniTest::Unit::TestCase
  def test_palindrome
    assert(palindromic?(9009))
    assert(!palindromic?(1234))
    assert(palindromic?(11211))
    assert(!palindromic?(11238))
  end

  def test_pairs
    [[1,1],[1,2],[1,3],[2,1],[2,2],[2,3],[3,1],[3,2],[3,3]].each do |pair|
      assert (1..3).pairs.include? pair
    end
  end

  def test_stutter
    assert_equal [1,1,1,2,2,2,3,3,3], [*(1..3).stutter]
  end
end



