def sum_fact(n)
  @sum_facts ||= []
  @sum_facts[n] ||= (proper_factors(n).inject(:+) || 0)
end

def amicable? n
  n == sum_fact(sum_fact(n)) && n != sum_fact(n)
end
