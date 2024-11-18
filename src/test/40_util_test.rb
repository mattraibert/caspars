require './test/test_helper'
require './40_util'

class FortyUtilTest < Minitest::Test
  def test_digit
    assert_equal(1, champernowne_digit(1))
    assert_equal(9, champernowne_digit(9))
    assert_equal(1, champernowne_digit(10))
    assert_equal(1, champernowne_digit(12))
    assert_equal(1, champernowne_digit(20))
    assert_equal(5, champernowne_digit(100))
    assert_equal(9, champernowne_digit(999))
    assert_equal(3, champernowne_digit(1_000))
    assert_equal(7, champernowne_digit(9_999))
    assert_equal(1, champernowne_digit(1_000_000))
  end

  def test_champernowne
    skip("still tuning")
    assert_equal(1, champernowne(1).length)
    assert_equal(9, champernowne(9).length)
    assert_equal(11, champernowne(10).length)
    assert_equal(13, champernowne(12).length)
    assert_equal(19, champernowne(19).length)
    assert_equal(1071, champernowne(999).length)
    assert_equal(2917, champernowne(1000).length)
    assert_equal(11913, champernowne(9_999).length)
    assert_equal(1_389_651, champernowne(1_000_000).length)
  end

  def test_take
    skip("still working on optimizing")
    assert_equal(1, champernowne_take(1))
    assert_equal(9, champernowne_take(9))
    assert_equal(10, champernowne_take(11))
    assert_within_range(99, champernowne_take(189), 0.33)
    assert_within_range(100, champernowne_take(192), 0.30)
    assert_within_range(999, champernowne_take(2889), 0.30)
    assert_within_range(1000, champernowne_take(2893), 0.30)
  end

  def assert_within_range(exp, act, epsilon)
    assert_in_delta(0, (act - exp) / exp.to_f, epsilon, "Expected #{act} to be within #{epsilon * 100}% of #{exp}")
  end

  def test_length
    assert_equal(1, champernowne_length(1))
    assert_equal(9, champernowne_length(9))
    assert_equal(11, champernowne_length(10))
    assert_equal(189, champernowne_length(99))
    assert_equal(192, champernowne_length(100))
    assert_equal(2889, champernowne_length(999))
    assert_equal(2893, champernowne_length(1000))
  end
end