require './test_helper'
require 'range_util'

class RangeUtilTest < MiniTest::Unit::TestCase
  def test_palindrome
    assert(palindromic?(nil))
    assert(palindromic?(9009))
    assert(!palindromic?(1234))
    assert(!palindromic?(1224))
    assert(palindromic?(11211))
    assert(!palindromic?(11238))
  end

  def test_pairs
    [[1,1],[1,2],[1,3],[2,1],[2,2],[2,3],[3,1],[3,2],[3,3]].each do |pair|
      assert (1..3).pairs.include? pair
    end
    [[1,1],[2,2],[6,6]].each do |pair|
      assert !(3..5).pairs.include?(pair), "#{pair} should not have been listed"
    end
  end

  def test_stutter
    assert_equal [1,1,2,2], [*(1..2).stutter]
    assert_equal [1,1,1,2,2,2,3,3,3], [*(1..3).stutter]
    assert_equal [2,2,2,3,3,3,4,4,4], [*(2..4).stutter]
  end

  def test_star
    assert_equal [1,2,3,1,2,3], [*(1..3) * 2]
  end

  def test_star_star
    assert_equal [1,1,2,2,3,3], [*(1..3) ** 2]
  end

  def test_pair_with
    [[1,1],[1,2],[1,3],[1,4],[2,1],[2,2],[2,3],[2,4],[3,1],[3,2],[3,3],[3,4]].each do |pair|
      assert (1..3).pair_with(1..4).include?(pair), "#{pair} should have been listed"
    end
    [[1,1],[2,2],[6,6],[3,5]].each do |pair|
      assert !(3..5).pair_with(2..4).include?(pair), "#{pair} should not have been listed"
    end
    [[3,2],[5,4],[3,4]].each do |pair|
      assert (3..5).pair_with(2..4).include?(pair), "#{pair} should have been listed"
    end
  end
end
