require './amicable_util'

def abundant? n
  sum_fact(n) > n
end

abundants = (28123.downto 12).select { |x| abundant? x }
sums = []

abundants.each do |ab1|
  abundants.each do |ab2|
    sum_of_abundants = ab1 + ab2
    sums[sum_of_abundants] = sum_of_abundants unless sum_of_abundants > 28123
  end
end

no_sums = (1..28123).to_a - sums.compact

puts no_sums.sum
