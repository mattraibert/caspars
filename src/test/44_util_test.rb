require './test/test_helper'
require './44_util'

class FortyFourUtilTest < Minitest::Test
  def test_pentagonal
    assert_equal(1, pentagonal(1))
    assert_equal(5, pentagonal(2))
    assert_equal(12, pentagonal(3))
    assert_equal(22, pentagonal(4))
    assert_equal(35, pentagonal(5))
    assert_equal(51, pentagonal(6))
    assert_equal(70, pentagonal(7))
    assert_equal(92, pentagonal(8))
    assert_equal(117, pentagonal(9))
    assert_equal(145, pentagonal(10))
  end

  # def test_xxx
  #   1000.times do |n|
  #     p = pentagonal(n)
  #     x = xxx(n)
  #     puts "P:#{p} X:#{x}" if x < p
  #   end
  # end

  def test_pentagonal?
    assert_equal(true, pentagonal?(1))
    assert_equal(true, pentagonal?(5))
    assert_equal(true, pentagonal?(12))
    assert_equal(true, pentagonal?(22))
    assert_equal(true, pentagonal?(35))
    assert_equal(true, pentagonal?(51))
    assert_equal(true, pentagonal?(70))
    assert_equal(true, pentagonal?(92))
    assert_equal(true, pentagonal?(117))
    assert_equal(true, pentagonal?(145))
    assert_equal(true, pentagonal?(4030))
    assert_equal(false, pentagonal?(4031))
    assert_equal(true, pentagonal?(94109401))
    assert_equal(false, pentagonal?(94109400))
  end
end