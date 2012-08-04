require './prime_util'

def sum_fact(n)
  proper_factors(n).inject(:+) || 0
end

pairs = (0..10_000).map { |x| [x, sum_fact(x)] }

puts pairs.select { |x| pairs[x[1]] == [x[1], x[0]] }.reject { |x| x[0] == x[1] }.flatten.uniq.inject(:+)