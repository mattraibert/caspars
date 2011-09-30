require 'minitest/autorun'
require '8_util'

class EightUtilTest < MiniTest::Unit::TestCase
  def test_chunks
    chunky =  Chunkable.new("the quick", 3)
    assert chunky.include?("e q")
    assert chunky.include?("ick")
    assert !chunky.include?("ck")
  end
end
