require 'minitest/autorun'
require '4'

class FourTest < MiniTest::Unit::TestCase
  def test_palindrome
    assert(palindromic?(9009))
    assert(!palindromic?(1234))
    assert(palindromic?(11211))
    assert(!palindromic?(11238))
  end

  def test_something
    pairs = pairs 4
    assert_equal([[4,4], [4,3], [3,4], [3,3], [4,2], [2,4], [3,2], [2,3], [2,2], [3,1], [1,3], [2,1], [1,1]], pairs)
  end
end
