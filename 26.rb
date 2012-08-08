require './26_util.rb'

puts (1..1000).map { |x| [x, cycle_length(x)] }.max { |y,z| y[1]<=> z[1] }[0]