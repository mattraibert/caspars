require './prime_util'

pairs = (0..10_000).map { |x| proper_factors(x).inject(:+) }.each_with_index.map {|n, i|[i, n]}

puts pairs.select {|x| pairs.include? [x[1], x[0]]}.reject {|x| x[0] == x[1] }.flatten.uniq.inject(:+)