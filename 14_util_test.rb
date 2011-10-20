require 'minitest/autorun'
require '14_util'

class FourteenUtilTest < MiniTest::Unit::TestCase
  def setup
    @cc = ChainCache.new
  end

  def test_chain
    assert_equal [13,40,20,10,5,16,8,4,2,1], chain(13)
  end

  def test_basics
    @cc.record_length 2,2
    assert_equal 1, @cc.lookup_length(1)
    assert_equal 2, @cc.lookup_length(2)
    assert @cc.is_cached? 1
    assert @cc.is_cached? 2
    assert !@cc.is_cached?(3)
  end

  def test_first_known
    @cc.record_length 4,3
    @cc.record_length 2,2
    assert_equal 4, @cc.first_known([16,8,4,2])
  end

  def test_unknown_portion
    @cc.record_length 4,3
    @cc.record_length 2,2
    assert_equal [16,8], @cc.unknown_portion([16,8,4,2])
  end

  def test_record_chain_from_prefix
    @cc.record_lengths [5,16,8,4,2], 1
    assert_equal 2, @cc.lookup_length(2)
    assert_equal 3, @cc.lookup_length(4)
    assert_equal 4, @cc.lookup_length(8)
    assert_equal 5, @cc.lookup_length(16)
    assert_equal 6, @cc.lookup_length(5)
  end
end
