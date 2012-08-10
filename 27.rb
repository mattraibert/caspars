require './27_util'

answers = (-999..999).pair_with(1..999).map do |a, b|
  [a, b, how_many_consecturive_primes?(a, b)]
end.max { |x,y| x[2] <=> y[2] }

puts answers[0] * answers[1]
