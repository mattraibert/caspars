require './digits'

puts (10..6*9**5).select { |x| x == x.digits.map { |d| d**5 }.sum }.sum