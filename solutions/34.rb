require './factorial_util'

def digit_factorials(n)
  n.digits.map do |d|
    factorial(d)
  end
end

def dfs(n)
  return 0 if n == 0
  @dfs ||= []
  cached = @dfs[n]
  return cached if cached

  @dfs[n] = dfs(n.div 10) + factorial(n % 10)
end

def curious?(n)
  return false if n == 1 or n == 2
  dfs(n) == n
end

def n34
  1_0000_000.times.map.select do |n|
    curious? n
  end.sum
end