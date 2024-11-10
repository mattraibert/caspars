require 'five_leaves/prime_util'
require 'prime'

def sum_fact(n)
  @sum_facts ||= []
  @sum_facts[n] ||= (FiveLeaves.proper_factors(n).sum || 0)
end

def amicable? n
  n == sum_fact(sum_fact(n)) && n != sum_fact(n)
end
