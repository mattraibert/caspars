require './digits'

puts (1..100).to_a.inject(1) { |memo, n| memo *= n }.digits.sum