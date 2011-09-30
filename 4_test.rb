require 'minitest/autorun'
require '4_util'

class FourUtilTest < MiniTest::Unit::TestCase
  def test_palindrome
    assert(palindromic?(9009))
    assert(!palindromic?(1234))
    assert(palindromic?(11211))
    assert(!palindromic?(11238))
  end
end
