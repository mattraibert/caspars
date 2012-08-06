require './amicable_util'

puts (0..10_000).select {|x| amicable? x }.sum
