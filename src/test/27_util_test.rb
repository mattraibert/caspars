#n² + n + 41 produces primes for 0..39
#n² − 79n + 1601 produces primes for 0..79
require './test/test_helper'
require './27_util'

class TwentySevenUtilTest < Minitest::Test
  def test_how_many_consecutive_primes?
    assert_equal(40, how_many_consecutive_primes?(1, 41))
    assert_equal(80, how_many_consecutive_primes?(-79, 1601))
  end
end
