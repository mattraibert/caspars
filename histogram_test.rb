require 'minitest/autorun'
require './histogram'

class HistogramTest < MiniTest::Unit::TestCase
  def test_histogram
    assert_equal "" "vodka: #####
water: ########################################################
juice: ############################################################################################################################################" "",
                 histogram([{label: "vodka", value: 10}, {label: "water", value: 100}, {label: "juice", value: 250}])
  end
end