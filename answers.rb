require 'minitest/autorun'

class AnswersTest < MiniTest::Unit::TestCase

  ANSWERS = {1 => 233168,
             2 => 4613732,
             3 => 6857,
             4 => 906609,
             5 => 232792560,
             6 => 25164150,
             7 => 104743,
             8 => 40824,
             9 => 31875000,
             10 => 142913828922,
             11 => 70600674,
             12 => 76576500,
             13 => 5537376230,
             14 => 837799,
             15 => 137846528820,
             16 => 1366,
             17 => 21124,
             18 => 1074,
             19 => 171,
             20 => 648,
             21 => 31626,
             22 => 871198282,
             23 => 4179871,
             24 => 2783915460,
             25 => 4782,
             67 => 7273}

  ANSWERS.each do |problem, answer|
    eval "" "def test_#{problem}
      assert_equal(#{answer}, `ruby -I. #{problem}.rb`.to_i)
    end" ""
  end
end
