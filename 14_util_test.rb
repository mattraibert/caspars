require 'minitest/autorun'
require '14_util'

class FourteenUtilTest < MiniTest::Unit::TestCase
  def setup
    @cc = ChainCache.new
  end

  def test_chain_length_records_lengths
    assert_equal 10, @cc.chain_length(13)

    [13,40,20,10,5,16,8,4,2,1].each do |x| 
      assert @cc.lookup_length(x)
    end

    assert_equal 10, @cc.lookup_length(13)
    assert_equal 9, @cc.lookup_length(40)
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
